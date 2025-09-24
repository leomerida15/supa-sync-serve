// Migration history table schema definition
export const migrationHistoryTableSchema = {
	columns: {
		version: {
			dataTypeCategory: 'S',
			datatype: 'varchar',
			nullable: false,
		},
		name: {
			dataTypeCategory: 'S',
			datatype: 'varchar',
			nullable: false,
		},
		status: {
			dataTypeCategory: 'S',
			datatype: 'varchar',
			nullable: false,
		},
		last_message: {
			dataTypeCategory: 'S',
			datatype: 'text',
			nullable: true,
		},
		script: {
			dataTypeCategory: 'S',
			datatype: 'text',
			nullable: true,
		},
		applied_on: {
			dataTypeCategory: 'D',
			datatype: 'timestamp',
			nullable: true,
		},
	},
	constraints: {},
	privileges: {},
	owner: '',
};

export default migrationHistoryTableSchema;
