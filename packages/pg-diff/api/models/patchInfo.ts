import { PatchInfo as PatchInfoInterface } from '../types';

export class PatchInfo implements PatchInfoInterface {
	public filename: string;
	public filepath: string;
	public version: string;
	public name: string;
	public status?: string;
	public message?: string;
	public command?: string;

	constructor(filename: string, filepath: string, version: string, name: string) {
		this.filename = filename;
		this.filepath = filepath;
		this.version = version;
		this.name = name;
	}
}

export default PatchInfo;
