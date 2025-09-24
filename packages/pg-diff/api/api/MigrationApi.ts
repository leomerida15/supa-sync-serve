import * as fs from 'fs';
import * as path from 'path';
import { Client } from 'pg';
import { Config, PatchInfo, MigrationConfig } from '../types';
import { Core } from '../core';
import * as sql from '../sqlScriptGenerator';
import { patchStatus } from '../enums/patchStatus';
import * as textReader from 'line-by-line';

export class MigrationApi {
	/**
	 * Migrate database
	 * @param config Configuration object
	 * @param force Force execution flag
	 * @param toSourceClient Execute on source client flag
	 * @param eventEmitter Event emitter
	 * @returns Promise<PatchInfo[]> List of applied patches
	 */
	static async migrate(
		config: Config,
		force: boolean,
		toSourceClient: boolean,
		eventEmitter: NodeJS.EventEmitter,
	): Promise<PatchInfo[]> {
		eventEmitter.emit('migrate', 'Migration started', 0);

		const migrationConfig = Core.prepareMigrationConfig(config);

		eventEmitter.emit('migrate', 'Connecting to database ...', 20);
		const clientConfig = toSourceClient ? config.sourceClient : config.targetClient;
		const pgClient = await Core.makePgClient(clientConfig);
		eventEmitter.emit(
			'migrate',
			`Connected to PostgreSQL ${pgClient.version.version} on [${clientConfig.host}:${clientConfig.port}/${clientConfig.database}] `,
			25,
		);

		eventEmitter.emit('migrate', 'Preparing migration history table ...', 30);
		await Core.prepareMigrationsHistoryTable(pgClient, migrationConfig);
		eventEmitter.emit('migrate', 'Migration history table has been prepared', 35);

		eventEmitter.emit('migrate', 'Collecting patches ...', 40);
		const patchesFiles = fs
			.readdirSync(migrationConfig.patchesFolder)
			.sort()
			.filter((file: string) => {
				return file.match(/.*\.(sql)/gi);
			});
		eventEmitter.emit('migrate', 'Patches collected', 45);

		if (patchesFiles.length <= 0) {
			eventEmitter.emit('migrate', 'The patch folder is empty', 100);
			return [];
		}

		const result: PatchInfo[] = [];

		eventEmitter.emit('migrate', 'Executing patches ...', 50);
		const progressStep = 50 / patchesFiles.length / 3;
		let progressValue = 50;

		for (const index in patchesFiles) {
			progressValue += progressStep;
			eventEmitter.emit('migrate', 'Reading patch status ...', progressValue);

			const patchFileInfo = Core.getPatchFileInfo(
				patchesFiles[index],
				migrationConfig.patchesFolder,
			);
			const patchFileStatus = await this.checkPatchStatus(pgClient, patchFileInfo, migrationConfig);

			switch (patchFileStatus) {
				case patchStatus.IN_PROGRESS:
					{
						if (!force) {
							throw new Error(
								`The patch version={${patchFileInfo.version}} and name={${patchFileInfo.name}} is still in progress!`,
							);
						}

						progressValue += progressStep;
						eventEmitter.emit(
							'migrate',
							`Executing patch ${patchFileInfo.filename} ...`,
							progressValue,
						);

						await this.applyPatch(pgClient, patchFileInfo, migrationConfig);
						result.push(patchFileInfo);

						progressValue += progressStep;
						eventEmitter.emit(
							'migrate',
							`Patch ${patchFileInfo.filename} has been executed`,
							progressValue,
						);
					}
					break;
				case patchStatus.ERROR:
					{
						if (!force) {
							throw new Error(
								`The patch version={${patchFileInfo.version}} and name={${patchFileInfo.name}} previously encountered an error! Try to "force" migration with argument -mr.`,
							);
						}

						progressValue += progressStep;
						eventEmitter.emit(
							'migrate',
							`Executing patch ${patchFileInfo.filename} ...`,
							progressValue,
						);

						await this.applyPatch(pgClient, patchFileInfo, migrationConfig);
						result.push(patchFileInfo);

						progressValue += progressStep;
						eventEmitter.emit(
							'migrate',
							`Patch ${patchFileInfo.filename} has been executed`,
							progressValue,
						);
					}
					break;
				case patchStatus.DONE:
					progressValue += progressStep * 2;
					eventEmitter.emit(
						'migrate',
						`Skip patch ${patchFileInfo.filename} because already executed`,
						progressValue,
					);
					break;
				case patchStatus.TO_APPLY:
					progressValue += progressStep;
					eventEmitter.emit(
						'migrate',
						`Executing patch ${patchFileInfo.filename} ...`,
						progressValue,
					);

					await this.applyPatch(pgClient, patchFileInfo, migrationConfig);
					result.push(patchFileInfo);

					progressValue += progressStep;
					eventEmitter.emit(
						'migrate',
						`Patch ${patchFileInfo.filename} has been executed`,
						progressValue,
					);
					break;
				default:
					throw new Error(
						`The status "${patchFileStatus}" not recognized! Impossible to apply patch version={${patchFileInfo.version}} and name={${patchFileInfo.name}}.`,
					);
			}
		}

		eventEmitter.emit('migrate', 'Migration completed', 100);

		return result;
	}

	/**
	 * Check patch status
	 * @param pgClient PostgreSQL client
	 * @param patchFileInfo Patch file information
	 * @param config Migration configuration
	 * @returns Promise<string> Patch status
	 */
	static async checkPatchStatus(
		pgClient: Client,
		patchFileInfo: PatchInfo,
		config: MigrationConfig,
	): Promise<string> {
		const sql = `SELECT "status" FROM ${config.migrationHistory.fullTableName} WHERE "version" = '${patchFileInfo.version}' AND "name" = '${patchFileInfo.name}'`;
		const response = await pgClient.query(sql);

		if (response.rows.length > 1) {
			throw new Error(
				`Too many patches found on migrations history table "${config.migrationHistory.fullTableName}" for patch version=${patchFileInfo.version} and name=${patchFileInfo.name}!`,
			);
		}

		if (response.rows.length < 1) return patchStatus.TO_APPLY;
		else return response.rows[0].status;
	}

	/**
	 * Apply patch
	 * @param pgClient PostgreSQL client
	 * @param patchFileInfo Patch file information
	 * @param config Migration configuration
	 */
	static async applyPatch(
		pgClient: Client,
		patchFileInfo: PatchInfo,
		config: MigrationConfig,
	): Promise<void> {
		await this.addRecordToHistoryTable(pgClient, patchFileInfo, config);
		try {
			const patchScript = await this.readPatch(pgClient, patchFileInfo, config);
			await this.updateRecordToHistoryTable(pgClient, patchScript, config);
		} catch (err) {
			const patchScript = { ...patchFileInfo };
			patchScript.status = patchStatus.ERROR;
			patchScript.message = err instanceof Error ? err.toString() : String(err);
			await this.updateRecordToHistoryTable(pgClient, patchScript, config);
			throw err;
		}
	}

	/**
	 * Read patch file
	 * @param pgClient PostgreSQL client
	 * @param patchFileInfo Patch file information
	 * @param config Migration configuration
	 * @returns Promise<PatchInfo>
	 */
	static async readPatch(
		pgClient: Client,
		patchFileInfo: PatchInfo,
		config: MigrationConfig,
	): Promise<PatchInfo> {
		const self = this;

		return new Promise((resolve, reject) => {
			try {
				const reader = new textReader(path.resolve(patchFileInfo.filepath, patchFileInfo.filename));
				let readingBlock = false;
				let readLines = 0;
				let commandExecuted = 0;
				let patchError: Error | null = null;

				const patchScript: PatchInfo = { ...patchFileInfo };
				patchScript.command = '';
				patchScript.message = '';

				reader.on('error', (err: Error) => {
					reject(err);
				});

				reader.on('line', function (line: string) {
					readLines += 1;
					if (readingBlock) {
						if (line.startsWith('--- END')) {
							readingBlock = false;
							reader.pause();
							self
								.executePatchScript(pgClient, patchScript, config)
								.then(() => {
									commandExecuted += 1;
									reader.resume();
								})
								.catch((err: Error) => {
									commandExecuted += 1;
									patchError = err;
									reader.close();
									reader.resume();
								});
						} else {
							patchScript.command += `${line}\n`;
						}
					}

					if (!readingBlock && line.startsWith('--- BEGIN')) {
						readingBlock = true;
						patchScript.command = '';
						patchScript.message = line;
					}
				});

				reader.on('end', function () {
					if (readLines <= 0) {
						patchError = new Error(
							`The patch "${patchFileInfo.name}" version "${patchFileInfo.version}" is empty!`,
						);
					} else if (commandExecuted <= 0) {
						patchError = new Error(
							`The patch "${patchFileInfo.name}" version "${patchFileInfo.version}" is malformed. Missing BEGIN/END comments!`,
						);
					}

					if (patchError) {
						reject(patchError);
					} else {
						patchScript.status = patchStatus.DONE;
						patchScript.message = '';
						patchScript.command = '';
						resolve(patchScript);
					}
				});
			} catch (e) {
				reject(e);
			}
		});
	}

	/**
	 * Save patch to migration history
	 * @param config Configuration
	 * @param patchFileName Patch file name
	 */
	static async savePatch(config: Config, patchFileName: string): Promise<void> {
		const migrationConfig = Core.prepareMigrationConfig(config);
		const pgClient = await Core.makePgClient(config.sourceClient);

		await Core.prepareMigrationsHistoryTable(pgClient, migrationConfig);

		const patchFilePath = path.resolve(migrationConfig.patchesFolder, patchFileName);

		if (!fs.existsSync(patchFilePath)) {
			throw new Error(`The patch file ${patchFilePath} does not exists!`);
		}

		const patchFileInfo = Core.getPatchFileInfo(patchFileName, patchFilePath);
		patchFileInfo.status = patchStatus.DONE;
		await this.addRecordToHistoryTable(pgClient, patchFileInfo, migrationConfig);
	}

	/**
	 * Execute patch script
	 * @param pgClient PostgreSQL client
	 * @param patchScript Patch script
	 * @param config Migration configuration
	 */
	static async executePatchScript(
		pgClient: Client,
		patchScript: PatchInfo,
		config: MigrationConfig,
	): Promise<void> {
		patchScript.status = patchStatus.IN_PROGRESS;
		await this.updateRecordToHistoryTable(pgClient, patchScript, config);
		await pgClient.query(patchScript.command || '');
	}

	/**
	 * Update record in history table
	 * @param pgClient PostgreSQL client
	 * @param patchScript Patch script
	 * @param config Migration configuration
	 */
	static async updateRecordToHistoryTable(
		pgClient: Client,
		patchScript: PatchInfo,
		config: MigrationConfig,
	): Promise<void> {
		const changes = {
			status: patchScript.status,
			last_message: patchScript.message,
			applied_on: new Date(),
		};

		if (patchScript.status !== patchStatus.ERROR) {
			(changes as any).script = patchScript.command;
		}

		const filterConditions = {
			version: patchScript.version,
			name: patchScript.name,
		};

		const command = sql.generateUpdateTableRecordScript(
			config.migrationHistory.fullTableName,
			config.migrationHistory.tableColumns,
			filterConditions,
			changes,
		);

		await pgClient.query(command);
	}

	/**
	 * Add record to history table
	 * @param pgClient PostgreSQL client
	 * @param patchFileInfo Patch file information
	 * @param config Migration configuration
	 */
	static async addRecordToHistoryTable(
		pgClient: Client,
		patchFileInfo: PatchInfo,
		config: MigrationConfig,
	): Promise<void> {
		const changes = {
			version: patchFileInfo.version,
			name: patchFileInfo.name,
			status: patchFileInfo.status || patchStatus.TO_APPLY,
			last_message: '',
			script: '',
			applied_on: null,
		};

		const options = {
			constraintName: config.migrationHistory.primaryKeyName,
		};

		const command = sql.generateMergeTableRecord(
			config.migrationHistory.fullTableName,
			config.migrationHistory.tableColumns,
			changes,
			options,
		);
		await pgClient.query(command);
	}
}

export default MigrationApi;
