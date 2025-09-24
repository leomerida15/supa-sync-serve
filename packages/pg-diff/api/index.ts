import { EventEmitter } from 'events';
import { Config, PatchInfo } from './types';
import { MigrationApi } from './api/MigrationApi';
import { CompareApi } from './api/CompareApi';

export class PgDiff {
	private config: Config;
	public events: EventEmitter;

	constructor(config: Config) {
		this.config = config;
		this.events = new EventEmitter();
	}

	/**
	 * Migrate database
	 * @param force True to force execution even for patches encountered an error
	 * @param toSourceClient True to execute patches on source client
	 * @returns Promise<PatchInfo[]> Return a list of PatchInfo.
	 */
	async migrate(force: boolean = false, toSourceClient: boolean = false): Promise<PatchInfo[]> {
		return await MigrationApi.migrate(this.config, force, toSourceClient, this.events);
	}

	/**
	 * Compare databases and generate patch
	 * @param scriptName The name of the script
	 * @returns Promise<string> Return the sql patch file path
	 */
	async compare(scriptName: string): Promise<string> {
		if (!scriptName) throw new Error('The script name must be specified!');
		return await CompareApi.compare(this.config, scriptName, this.events);
	}

	/**
	 * Save patch to migration history
	 * @param patchFileName The patch file name
	 */
	async save(patchFileName: string): Promise<void> {
		if (!patchFileName) throw new Error('The patch file name must be specified!');
		return await MigrationApi.savePatch(this.config, patchFileName);
	}
}

export type { Config, PatchInfo } from './types';
export * from './types';
