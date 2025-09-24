import { ServerVersion as ServerVersionInterface } from '../types';

export class ServerVersion implements ServerVersionInterface {
	public major: number;
	public minor: number;
	public patch: number;
	public version: string;

	constructor(major: number = 0, minor: number = 0, patch: number = 0, version: string = '') {
		this.major = major;
		this.minor = minor;
		this.patch = patch;
		this.version = version;
	}
}

export default ServerVersion;
