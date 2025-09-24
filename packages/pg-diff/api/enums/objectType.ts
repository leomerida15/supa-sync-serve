import { ObjectType } from '../types';

export const objectType = {
	SCHEMA: ObjectType.SCHEMA,
	TABLE: ObjectType.TABLE,
	COLUMN: ObjectType.COLUMN,
	CONSTRAINT: ObjectType.CONSTRAINT,
	INDEX: ObjectType.INDEX,
	VIEW: ObjectType.VIEW,
	MATERIALIZED_VIEW: ObjectType.MATERIALIZED_VIEW,
	FUNCTION: ObjectType.FUNCTION,
	AGGREGATE: ObjectType.AGGREGATE,
	SEQUENCE: ObjectType.SEQUENCE,
	PROCEDURE: ObjectType.PROCEDURE,
	TRIGGER: ObjectType.TRIGGER,
};

export default objectType;
