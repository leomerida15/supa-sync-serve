import { Client, type ClientConfig } from "pg";
import * as fs from "fs";

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
    host: "aws-0-us-east-2.pooler.supabase.com",
    port: 5432,
    database: "postgres",
    user: "postgres.qklwlyoenlffxnwrkxuc",
    password: "Kw07OePOyVZKRHjy",
    ssl: false,
};

const targetConfig: DatabaseConfig = {
    host: "aws-1-us-east-2.pooler.supabase.com",
    port: 5432,
    database: "postgres",
    user: "postgres.yvztwadvzlapiqjkmabb",
    password: "aVsmeJBn5J35ii1W",
    ssl: false,
};

async function captureRLSPolicies(
    config: DatabaseConfig,
    label: string,
): Promise<RLSPolicy[]> {
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
        console.error(
            `Error connecting to ${label}:`,
            (error as Error).message,
        );
        return [];
    } finally {
        await client.end();
    }
}

async function generateRLSMigrationScript(
    sourcePolicies: RLSPolicy[],
    targetPolicies: RLSPolicy[],
): Promise<string> {
    console.log("\n=== Generating RLS Migration Script ===");

    const script: string[] = [];
    script.push("-- RLS Policies Migration Script");
    script.push("-- Generated automatically");
    script.push("");

    // Find policies that exist in source but not in target
    const sourcePolicyMap = new Map<string, RLSPolicy>();
    sourcePolicies.forEach((policy) => {
        const key =
            `${policy.schemaname}.${policy.tablename}.${policy.policyname}`;
        sourcePolicyMap.set(key, policy);
    });

    const targetPolicyMap = new Map<string, RLSPolicy>();
    targetPolicies.forEach((policy) => {
        const key =
            `${policy.schemaname}.${policy.tablename}.${policy.policyname}`;
        targetPolicyMap.set(key, policy);
    });

    // Add missing policies
    for (const [key, policy] of sourcePolicyMap) {
        if (!targetPolicyMap.has(key)) {
            script.push(
                `-- Add RLS policy: ${policy.policyname} on ${policy.schemaname}.${policy.tablename}`,
            );

            // Enable RLS on table if not already enabled
            script.push(
                `ALTER TABLE ${policy.schemaname}.${policy.tablename} ENABLE ROW LEVEL SECURITY;`,
            );

            // Create the policy
            let policySQL =
                `CREATE POLICY ${policy.policyname} ON ${policy.schemaname}.${policy.tablename}`;
            policySQL += ` FOR ${policy.cmd}`;

            if (
                policy.roles &&
                Array.isArray(policy.roles) &&
                policy.roles.length > 0
            ) {
                policySQL += ` TO ${policy.roles.join(", ")}`;
            } else if (policy.roles && !Array.isArray(policy.roles)) {
                policySQL += ` TO ${policy.roles}`;
            }

            if (policy.qual) {
                policySQL += ` USING (${policy.qual})`;
            }

            if (policy.with_check) {
                policySQL += ` WITH CHECK (${policy.with_check})`;
            }

            policySQL += ";";
            script.push(policySQL);
            script.push("");
        }
    }

    // Find policies that exist in target but not in source (to drop)
    for (const [key, policy] of targetPolicyMap) {
        if (!sourcePolicyMap.has(key)) {
            script.push(
                `-- Drop RLS policy: ${policy.policyname} on ${policy.schemaname}.${policy.tablename}`,
            );
            script.push(
                `DROP POLICY IF EXISTS ${policy.policyname} ON ${policy.schemaname}.${policy.tablename};`,
            );
            script.push("");
        }
    }

    return script.join("\n");
}

async function main(): Promise<void> {
    console.log("Capturing RLS policies from both databases...");

    const sourcePolicies = await captureRLSPolicies(sourceConfig, "SOURCE");
    const targetPolicies = await captureRLSPolicies(targetConfig, "TARGET");

    if (sourcePolicies.length > 0 || targetPolicies.length > 0) {
        const migrationScript = await generateRLSMigrationScript(
            sourcePolicies,
            targetPolicies,
        );

        // Write to file
        const timestamp = new Date()
            .toISOString()
            .replace(/[:.]/g, "-")
            .slice(0, 19);
        const filename = `db_migration/rls_policies_${timestamp}.sql`;

        fs.writeFileSync(filename, migrationScript);
        console.log(`\nRLS migration script written to: ${filename}`);
    } else {
        console.log("\nNo RLS policies found in either database.");
    }
}

main().catch((error) => {
    console.error("Error:", error);
    process.exit(1);
});
