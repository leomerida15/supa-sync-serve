import { Command } from "commander";

export const diffCommand = new Command("diff")
	.description("Extract and use all commands from pg-diff-cli package")
	.action(async () => {
		// Spawn pg-diff-cli with all arguments passed to this command
		const args = process.argv.slice(3); // Remove 'node', script name, and 'diff'

		const pgDiffCli = await import("pg-diff-cli");
		const child = pgDiffCli.default(args);

		child.on("error", (error: Error) => {
			console.error(`Error executing pg-diff-cli: ${error.message}`);
			process.exit(1);
		});

		child.on("close", (code: number) => {
			process.exit(code || 0);
		});
	});
