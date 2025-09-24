# pg-diff-cli Documentation

## Overview

`pg-diff-cli` is a PostgreSQL schema and data comparing CLI tool that allows you to compare database schemas and generate migration scripts between different PostgreSQL databases.

## Documentation Source

- **MCP Documentation**: `@pg-diff-cli`
- **MCP Repository**: `pg-diff-cli-repo`
- **Local Location**: `@cli/`
- **Official Documentation**: https://michaelsogos.github.io/pg-diff/

## Description

`pg-diff-cli` provides command-line interface functionality for comparing PostgreSQL databases. It can analyze schema differences, table structures, data differences, and generate migration scripts to synchronize databases.

## Key Features

- Schema comparison between PostgreSQL databases
- Data comparison capabilities
- Migration script generation
- Command-line interface for automation
- Support for various PostgreSQL versions

## Integration in diff-supa

The `diff` command in `diff-supa` acts as a wrapper around `pg-diff-cli`, providing access to all its functionality:

```bash
# Basic usage
diff-supa diff --help

# Compare two databases
diff-supa diff --source-db-url "postgresql://..." --target-db-url "postgresql://..."

# Generate migration script
diff-supa diff --source-db-url "postgresql://..." --target-db-url "postgresql://..." --output-file migration.sql
```

## Available MCP Tools

When working with `pg-diff-cli` through the MCP system, you have access to:

- `fetch_pg_diff_documentation`: Fetch complete documentation
- `search_pg_diff_documentation`: Search within documentation
- `search_pg_diff_code`: Search for specific code examples
- `fetch_generic_url_content`: Fetch content from referenced URLs

## Usage Notes

- All arguments passed after `diff` are forwarded directly to `pg-diff-cli`
- Use `diff-supa diff --help` to see complete list of available options
- The tool requires proper database connection strings for source and target databases
