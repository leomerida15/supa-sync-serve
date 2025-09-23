import { Client, type ClientConfig } from 'pg';
import * as fs from 'fs';
import { execSync } from 'child_process';

// Database connection configuration interfaces
interface DatabaseConfig extends ClientConfig {
	host: string;
	port: number;
	database: string;
	user: string;
	password: string;
	ssl: boolean;
}

interface RLSPolicy {
	schemaname: string;
	tablename: string;
	policyname: string;
	permissive: string;
	roles: string[] | string | null;
	cmd: string;
	qual: string | null;
	with_check: string | null;
}

// Database connection configurations
const sourceConfig: DatabaseConfig = {
	host: 'aws-0-us-east-2.pooler.supabase.com',
	port: 5432,
	database: 'postgres',
	user: 'postgres.qklwlyoenlffxnwrkxuc',
	password: 'Kw07OePOyVZKRHjy',
	ssl: false,
};

const targetConfig: DatabaseConfig = {
	host: 'aws-1-us-east-2.pooler.supabase.com',
	port: 5432,
	database: 'postgres',
	user: 'postgres.yvztwadvzlapiqjkmabb',
	password: 'aVsmeJBn5J35ii1W',
	ssl: false,
};

async function captureRLSPolicies(config: DatabaseConfig, label: string): Promise<RLSPolicy[]> {
	const client = new Client(config);

	try {
		await client.connect();
		console.log(`\n=== RLS Policies from ${label} ===`);

		// Get RLS policies
		const policiesQuery = `
      SELECT 
        schemaname,
        tablename,
        policyname,
        permissive,
        roles,
        cmd,
        qual,
        with_check
      FROM pg_policies 
      ORDER BY schemaname, tablename, policyname;
    `;

		const policiesResult = await client.query(policiesQuery);

		if (policiesResult.rows.length === 0) {
			console.log(`No RLS policies found in ${label}`);
			return [];
		}

		console.log(`Found ${policiesResult.rows.length} RLS policies:`);
		policiesResult.rows.forEach((policy: RLSPolicy) => {
			console.log(
				`- ${policy.schemaname}.${policy.tablename}: ${policy.policyname} (${policy.cmd})`,
			);
		});

		return policiesResult.rows as RLSPolicy[];
	} catch (error) {
		console.error(`Error connecting to ${label}:`, (error as Error).message);
		return [];
	} finally {
		await client.end();
	}
}

function generateRLSSection(sourcePolicies: RLSPolicy[], targetPolicies: RLSPolicy[]): string {
	const script: string[] = [];
	script.push('');
	script.push('/************************************************************/');
	script.push('/*** RLS POLICIES SECTION ***/');
	script.push('/************************************************************/');
	script.push('');

	// Find policies that exist in source but not in target
	const sourcePolicyMap = new Map<string, RLSPolicy>();
	sourcePolicies.forEach((policy) => {
		const key = `${policy.schemaname}.${policy.tablename}.${policy.policyname}`;
		sourcePolicyMap.set(key, policy);
	});

	const targetPolicyMap = new Map<string, RLSPolicy>();
	targetPolicies.forEach((policy) => {
		const key = `${policy.schemaname}.${policy.tablename}.${policy.policyname}`;
		targetPolicyMap.set(key, policy);
	});

	// Add missing policies
	for (const [key, policy] of sourcePolicyMap) {
		if (!targetPolicyMap.has(key)) {
			script.push(
				`--- BEGIN CREATE RLS POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename} ---`,
			);

			// Enable RLS on table if not already enabled
			script.push(
				`ALTER TABLE ${policy.schemaname}.${policy.tablename} ENABLE ROW LEVEL SECURITY;`,
			);

			// Create the policy
			let policySQL = `CREATE POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename}`;
			policySQL += ` FOR ${policy.cmd}`;

			if (policy.roles && Array.isArray(policy.roles) && policy.roles.length > 0) {
				policySQL += ` TO ${policy.roles.join(', ')}`;
			} else if (policy.roles && !Array.isArray(policy.roles)) {
				policySQL += ` TO ${policy.roles}`;
			}

			if (policy.qual) {
				policySQL += ` USING (${policy.qual})`;
			}

			if (policy.with_check) {
				policySQL += ` WITH CHECK (${policy.with_check})`;
			}

			policySQL += ';';
			script.push(policySQL);
			script.push(
				`--- END CREATE RLS POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename} ---`,
			);
			script.push('');
		}
	}

	// Find policies that exist in target but not in source (to drop)
	for (const [key, policy] of targetPolicyMap) {
		if (!sourcePolicyMap.has(key)) {
			script.push(
				`--- BEGIN DROP RLS POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename} ---`,
			);
			script.push(
				`DROP POLICY IF EXISTS ${policy.policyname} ON ${policy.schemaname}.${policy.tablename};`,
			);
			script.push(
				`--- END DROP RLS POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename} ---`,
			);
			script.push('');
		}
	}

	return script.join('\n');
}

function runPgDiff(): string {
	console.log('\n=== Running pg-diff to generate schema migration ===');

	try {
		// Run pg-diff command
		const output = execSync('pg-diff -c GobernAI.sync.config schema-migration', {
			encoding: 'utf8',
			cwd: process.cwd(),
		});

		console.log('pg-diff output:', output);

		// Find the generated migration file
		const migrationFiles = fs
			.readdirSync('db_migration')
			.filter((file) => file.startsWith('schema-migration') && file.endsWith('.sql'))
			.sort()
			.reverse(); // Get the most recent one

		if (migrationFiles.length === 0) {
			throw new Error('No migration file generated by pg-diff');
		}

		const latestMigrationFile = `db_migration/${migrationFiles[0]}`;
		console.log(`Found migration file: ${latestMigrationFile}`);

		return latestMigrationFile;
	} catch (error) {
		console.error('Error running pg-diff:', (error as Error).message);
		throw error;
	}
}

async function main(): Promise<void> {
	console.log('Generating unified migration with schema and RLS policies...');

	try {
		// Step 1: Run pg-diff to generate schema migration
		const schemaMigrationFile = runPgDiff();

		// Step 2: Capture RLS policies
		console.log('\n=== Capturing RLS policies ===');
		const sourcePolicies = await captureRLSPolicies(sourceConfig, 'SOURCE');
		const targetPolicies = await captureRLSPolicies(targetConfig, 'TARGET');

		// Step 3: Read the schema migration file
		const schemaContent = fs.readFileSync(schemaMigrationFile, 'utf8');

		// Step 4: Generate RLS section
		const rlsSection = generateRLSSection(sourcePolicies, targetPolicies);

		// Step 5: Combine schema and RLS into unified migration
		const unifiedContent = schemaContent + rlsSection;

		// Step 6: Write unified migration file
		const timestamp = new Date().toISOString().replace(/[:.]/g, '-').slice(0, 19);
		const unifiedFilename = `db_migration/unified_migration_${timestamp}.sql`;

		fs.writeFileSync(unifiedFilename, unifiedContent);
		console.log(`\n✅ Unified migration file created: ${unifiedFilename}`);

		// Step 7: Clean up individual files (optional)
		console.log(`\n📁 Schema migration: ${schemaMigrationFile}`);
		console.log(`📁 Unified migration: ${unifiedFilename}`);
	} catch (error) {
		console.error('Error generating migration:', (error as Error).message);
		process.exit(1);
	}
}

main().catch((error) => {
	console.error('Error:', error);
	process.exit(1);
});
