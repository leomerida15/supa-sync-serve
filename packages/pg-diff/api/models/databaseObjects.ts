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

	constructor() {
		// Initialize all properties as null
	}
}

export default DatabaseObjects;
