# Diff Command

The `diff` command provides access to all functionality from the `pg-diff-cli` package.

## Usage

```bash
diff-supa diff [pg-diff-cli-options]
```

## Description

This command acts as a wrapper around `pg-diff-cli`, allowing you to use all the commands and options available in the original package. All arguments passed after `diff` are forwarded directly to `pg-diff-cli`.

## Examples

```bash
# Basic usage
diff-supa diff --help

# Compare two databases
diff-supa diff --source-db-url "postgresql://..." --target-db-url "postgresql://..."

# Generate migration script
diff-supa diff --source-db-url "postgresql://..." --target-db-url "postgresql://..." --output-file migration.sql
```

## Available Options

All options from `pg-diff-cli` are available. Use `diff-supa diff --help` to see the complete list of available options.
