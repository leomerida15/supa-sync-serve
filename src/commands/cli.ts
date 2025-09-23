import { Command } from "commander";
import { diffCommand } from "./diff";
import { syncCommand } from "./sync";
import { initCommand } from "./init";

const program = new Command();

program.name("diff-supa").description("CLI to sync Supabase databases").version(
    "0.8.0",
);

// Add diff command
program.addCommand(diffCommand);

// Add sync command
program.addCommand(syncCommand);

// Add init command
program.addCommand(initCommand);

export default program;
