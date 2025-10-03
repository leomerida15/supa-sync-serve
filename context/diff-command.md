# Diff Command

The `diff` command provides access to all functionality from the `pg-diff-cli` package by executing the local CLI code from `@cli/`.

## Usage

```bash
diff-supa diff [pg-diff-cli-options]
```

## Description

This command acts as a wrapper around the local `pg-diff-cli` implementation, allowing you to use all the commands and options available in the original package. The command executes the local CLI code from `@cli/` and passes all arguments directly to it.

## Available Options

The command accepts all flags from `pg-diff-cli`:

- `-h, --help`: To show help
- `-c, --compare`: To run compare and generate a patch file (configName and scriptName as separate arguments)
- `-ms, --migrate-to-source`: To run migration applying all missing patch files to SOURCE CLIENT (configName as separate argument)
- `-mt, --migrate-to-target`: To run migration applying all missing patch files to TARGET CLIENT (configName as separate argument)
- `-f, --config-file <filepath>`: To specify where to find config file, otherwise looks for 'pg-diff-config.json' on current working directory
- `-p, --patch-folder <folder>`: To set patch folder where save\retrieve patches (it will override configuration)
- `-s, --save`: To save\register patch on migration history table without executing the script (configName and patchFileName as separate arguments)
- `-g, --generate-config [filename]`: To generate a new config file
- `-ss, --seed-to-source`: To run seeds applying all seed files to SOURCE CLIENT (configName as separate argument)
- `-st, --seed-to-target`: To run seeds applying all seed files to TARGET CLIENT (configName as separate argument)

## Examples

```bash
# Show help
diff-supa diff --help

# Generate config file
diff-supa diff --generate-config my-config

# Compare databases (configName and scriptName as separate arguments)
diff-supa diff -c development my-script

# Compare with custom config file
diff-supa diff -f config.json -c GobernAI.sync.config init

# Migrate to source (using short alias)
diff-supa diff -ms development

# Migrate to target (using short alias)
diff-supa diff -mt development

# Migrate to source (using long form)
diff-supa diff --migrate-to-source development

# Migrate to target (using long form)
diff-supa diff --migrate-to-target development

# Save patch (configName and patchFileName as separate arguments)
diff-supa diff -s development 20182808103040999_my-script.sql

# Use custom config file with compare
diff-supa diff --config-file /path/to/config.json -c development my-script

# Use custom patch folder
diff-supa diff --patch-folder /path/to/patches -c development my-script

# Execute seeds to source database (using short alias)
diff-supa diff -ss development

# Execute seeds to target database (using short alias)
diff-supa diff -st development

# Execute seeds to source database (using long form)
diff-supa diff --seed-to-source development

# Execute seeds to target database (using long form)
diff-supa diff --seed-to-target development

# Execute seeds with custom config file
diff-supa diff -ss production --config-file /path/to/config.json
```

## Implementation Details

The command:

1. Accepts all pg-diff-cli flags using Commander.js
2. Constructs the appropriate argument array
3. Temporarily replaces `process.argv` with the constructed arguments
4. Executes the local CLI code from `@cli/` using the `Run()` function
5. Restores the original `process.argv`
