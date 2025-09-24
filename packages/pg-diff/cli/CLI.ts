import * as chalk from 'chalk';
import * as figlet from 'figlet';
import * as path from 'path';
import * as inquirer from '@inquirer/prompts';
import * as fs from 'fs';
import { PackageJson, GeneratedConfig } from '../api/types';

const log = console.log;

export class CLI {
	/**
	 * Print initial CLI information
	 * @param pjson The package json
	 */
	static PrintIntro(pjson: PackageJson): void {
		log(chalk.yellow(figlet.textSync(pjson.name, { horizontalLayout: 'full' })));
		log();
		log(chalk.blue('     Author: ') + chalk.green(pjson.author));
		log(chalk.blue('    Version: ') + chalk.green(pjson.version));
		log(chalk.blue(' PostgreSQL: ') + chalk.green(pjson.pgver));
		log(chalk.blue('    License: ') + chalk.green(pjson.license));
		log(chalk.blue('Description: ') + chalk.green(pjson.description));
		log();
	}

	/**
	 * Print help documentation
	 */
	static PrintHelp(): void {
		log();
		log();
		log(chalk.magenta('=============================='));
		log(chalk.magenta('===   pg-diff-cli   HELP   ==='));
		log(chalk.magenta('=============================='));
		log();
		log(chalk.gray('OPTION                      \t\tDESCRIPTION'));
		log(chalk.green('-h,  --help                \t\t') + chalk.blue('To show this help.'));
		log(
			chalk.green('-c,  --compare             \t\t') +
				chalk.blue('To run compare and generate a patch file.'),
		);
		log(
			chalk.green('-ms, --migrate-to-source   \t\t') +
				chalk.blue('To run migration applying all missing patch files to SOURCE CLIENT.'),
		);
		log(
			chalk.green('-mt, --migrate-to-target   \t\t') +
				chalk.blue('To run migration applying all missing patch files to TARGET CLIENT.'),
		);
		log(
			chalk.green('-f,  --config-file         \t\t') +
				chalk.blue(
					"To specify where to find config file, otherwise looks for 'pg-diff-config.json' on current working directory.",
				),
		);
		log(
			chalk.green('-p,  --patch-folder        \t\t') +
				chalk.blue(
					'To set patch folder where save\\retrieve patches (it will override configuration).',
				),
		);
		log(
			chalk.green('-s,  --save                \t\t') +
				chalk.blue(
					'To save\\register patch on migration history table without executing the script.',
				),
		);
		log(
			chalk.green('-g,  --generate-config     \t\t') + chalk.blue('To generate a new config file.'),
		);
		log();
		log();
		log(
			chalk.gray('TO GENERATE CONFIG FILE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-g ') +
				chalk.cyan('[configuration-file-name]'),
		);
		log(chalk.gray('                EXAMPLE: ') + chalk.yellow('pg-diff ') + chalk.gray('-g '));
		log(
			chalk.gray('                EXAMPLE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-g ') +
				chalk.cyan('my-config'),
		);
		log();
		log(
			chalk.gray('             TO COMPARE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-c ') +
				chalk.cyan('configuration-name script-name'),
		);
		log(
			chalk.gray('                EXAMPLE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-c ') +
				chalk.cyan('development my-script'),
		);
		log();
		log(
			chalk.gray('             TO MIGRATE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('[-ms | -mt] ') +
				chalk.cyan('configuration-name'),
		);
		log(
			chalk.gray('                EXAMPLE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-ms ') +
				chalk.cyan('development'),
		);
		log(
			chalk.gray('                EXAMPLE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-mt ') +
				chalk.cyan('development'),
		);
		log();
		log(
			chalk.gray('            TO REGISTER: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-s ') +
				chalk.cyan('configuration-name patch-file-name'),
		);
		log(
			chalk.gray('                EXAMPLE: ') +
				chalk.yellow('pg-diff ') +
				chalk.gray('-s ') +
				chalk.cyan('development 20182808103040999_my-script.sql'),
		);
		log();
		log();
	}

	/**
	 * Print configuration options
	 * @param config The configuration
	 */
	static PrintOptions(config: any): void {
		log();
		log(chalk.gray('CONFIGURED OPTIONS'));
		log(chalk.yellow('         Script Author: ') + chalk.green(config.compareOptions.author));
		log(
			chalk.yellow('      Output Directory: ') +
				chalk.green(path.resolve(process.cwd(), config.compareOptions.outputDirectory)),
		);
		const schemasMessage =
			config.compareOptions.schemaCompare.namespaces &&
			config.compareOptions.schemaCompare.namespaces.length
				? config.compareOptions.schemaCompare.namespaces
				: 'will be retrieve dynamically from database';
		log(chalk.yellow('     Schema Namespaces: ') + chalk.green(schemasMessage));
		log(
			chalk.yellow('          Data Compare: ') +
				chalk.green(config.compareOptions.dataCompare.enable ? 'ENABLED' : 'DISABLED'),
		);
		log();
	}

	static async GenerateConfig(filename: string = 'pg-diff-config'): Promise<void> {
		const configName = await inquirer.input({
			message: 'Type a name for this configuration:',
			required: true,
		});

		const patchesFolderName = await inquirer.input({
			message: 'Type the patches folder name:',
			default: 'db_migration',
			required: true,
		});

		const configGenerated: GeneratedConfig = {};
		configGenerated[configName] = {
			sourceClient: {
				host: await inquirer.input({
					message: 'Type the SOURCE host name:',
					default: 'localhost',
					required: true,
				}),
				port: await inquirer.number({
					message: 'Type the SOURCE port number:',
					default: 5432,
					required: true,
				}),
				database: await inquirer.input({
					message: 'Type the SOURCE database name:',
					required: true,
				}),
				user: await inquirer.input({
					message: 'Type the SOURCE username:',
					default: 'postgres',
					required: true,
				}),
				password: await inquirer.password({
					message: 'Type the SOURCE password:',
					mask: true,
				}),
				applicationName: await inquirer.input({
					message: 'Type the SOURCE application name:',
					default: 'pg-diff-cli',
					required: true,
				}),
				ssl: await inquirer.confirm({
					message: 'Does connection to SOURCE require SSL?',
				}),
			},
			targetClient: {
				host: await inquirer.input({
					message: 'Type the TARGET host name:',
					default: 'localhost',
					required: true,
				}),
				port: await inquirer.number({
					message: 'Type the TARGET port number:',
					default: 5432,
					required: true,
				}),
				database: await inquirer.input({
					message: 'Type the TARGET database name:',
					required: true,
				}),
				user: await inquirer.input({
					message: 'Type the TARGET username:',
					default: 'postgres',
					required: true,
				}),
				password: await inquirer.password({
					message: 'Type the TARGET password:',
					mask: true,
				}),
				applicationName: await inquirer.input({
					message: 'Type the TARGET application name:',
					default: 'pg-diff-cli',
					required: true,
				}),
				ssl: await inquirer.confirm({
					message: 'Does connection to TARGET require SSL?',
				}),
			},
			compareOptions: {
				author: await inquirer.input({ message: 'Type the author of sql patches:' }),
				getAuthorFromGit: await inquirer.confirm({
					message: 'Do you like to get the author from GIT user?',
				}),
				outputDirectory: patchesFolderName,
				schemaCompare: {
					namespaces: [],
					dropMissingTable: await inquirer.confirm({
						message: 'Do you want to enable DROP TABLE when exists on TARGET only?',
					}),
					dropMissingView: await inquirer.confirm({
						message: 'Do you want to enable DROP VIEW when exists on TARGET only?',
					}),
					dropMissingFunction: await inquirer.confirm({
						message: 'Do you want to enable DROP FUNCTION when exists on TARGET only?',
					}),
					dropMissingAggregate: await inquirer.confirm({
						message: 'Do you want to enable DROP AGGREGATE when exists on TARGET only?',
					}),
					roles: [],
				},
				dataCompare: {
					enable: await inquirer.confirm({
						message: 'Do you want to enable data compare?',
					}),
					tables: [
						{
							tableName: 'my_table_example',
							tableSchema: 'public',
							tableKeyFields: ['id'],
							columns: {},
							constraints: {},
							indexes: {},
							privileges: {},
							triggers: {},
							owner: '',
							comment: '',
						},
					],
				},
			},
			migrationOptions: {
				patchesDirectory: patchesFolderName,
				historyTableName: await inquirer.input({
					message: 'Type the table name will persist the patches applied:',
					default: 'migrations',
					required: true,
				}),
				historyTableSchema: await inquirer.input({
					message: 'Type the schema name for the table will persist the patches applied:',
					default: 'public',
					required: true,
				}),
			},
		};

		fs.writeFileSync(`${filename}.json`, JSON.stringify(configGenerated, null, 4), 'utf-8');
	}
}

export default CLI;
