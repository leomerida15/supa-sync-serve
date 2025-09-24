import { TableData } from '../types';

export class TableDataModel implements TableData {
	public sourceData: {
		records: {
			fields: any[];
			rows: any[];
		};
		sequences: any[];
	};
	public targetData: {
		records: {
			fields: any[];
			rows: any[];
		};
		sequences: any[];
	};

	constructor() {
		this.sourceData = {
			records: {
				fields: [],
				rows: [],
			},
			sequences: [],
		};
		this.targetData = {
			records: {
				fields: [],
				rows: [],
			},
			sequences: [],
		};
	}
}

export default TableDataModel;
