// Migration history table schema definition
export const migrationHistoryTableSchema = {
	columns: {
		version: {
			dataTypeCategory: 'S',
			datatype: 'text',
			nullable: false,
		},
		statements: {
			dataTypeCategory: 'A',
			datatype: 'text[]',
			nullable: true,
		},
		name: {
			dataTypeCategory: 'S',
			datatype: 'text',
			nullable: true,
		},
		author: {
			dataTypeCategory: 'S',
			datatype: 'text',
			nullable: false,
		},
	},
	constraints: {},
	privileges: {},
	owner: '',
};

export default migrationHistoryTableSchema;
