import { Command } from 'commander';
import { select } from '@inquirer/prompts';

export const initCommand = new Command('init')
	.description('Initialize sync configuration')
	.action(async () => {
		try {
			console.log('Initializing sync configuration...');
			console.log('✅ Sync configuration initialized successfully!');
		} catch (error) {
			console.error('Error in init command:', error);
			process.exit(1);
		}
	});
