import { DatabaseObjects as DatabaseObjectsInterface } from '../types';

export class DatabaseObjects implements DatabaseObjectsInterface {
	public schemas: Record<string, any> | null = null;
	public tables: Record<string, any> | null = null;
	public views: Record<string, any> | null = null;
	public materializedViews: Record<string, any> | null = null;
	public functions: Record<string, any> | null = null;
	public aggregates: Record<string, any> | null = null;
	public sequences: Record<string, any> | null = null;
	public extensions: Record<string, any> | null = null;
	public enums: Record<string, any> | null = null;
	public types: Record<string, any> | null = null;
	public triggers: Record<string, any> | null = null;
	public procedures: Record<string, any> | null = null;
	public foreignKeys: Record<string, any> | null = null;
	public tableStructures: Record<string, any> | null = null;

	constructor() {
		// Initialize all properties as null
	}
}

export default DatabaseObjects;
