import { TableDefinition } from '../types';

export class TableDefinitionModel implements TableDefinition {
	public tableName: string;
	public tableSchema: string;
	public tableKeyFields: string[];

	constructor(tableName: string, tableSchema: string, tableKeyFields: string[]) {
		this.tableName = tableName;
		this.tableSchema = tableSchema;
		this.tableKeyFields = tableKeyFields;
	}
}

export default TableDefinitionModel;
