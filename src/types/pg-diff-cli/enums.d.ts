/**
 * Available actions for pg-diff-cli
 */
export declare const actions: {
	readonly COMPARE: 'COMPARE';
	readonly MIGRATE_TO_SOURCE: 'MIGRATE_TO_SOURCE';
	readonly MIGRATE_TO_TARGET: 'MIGRATE_TO_TARGET';
	readonly SAVE: 'SAVE';
	readonly HELP: 'HELP';
	readonly GENERATE_CONFIG: 'GENERATE_CONFIG';
};

/**
 * Available options for pg-diff-cli
 */
export declare const options: {
	readonly CONFIG_FILEPATH: 'CONFIG_FILEPATH';
	readonly PATCH_FOLDER: 'PATCH_FOLDER';
};

/**
 * Type for action values
 */
export type ActionType = (typeof actions)[keyof typeof actions];

/**
 * Type for option values
 */
export type OptionType = (typeof options)[keyof typeof options];
