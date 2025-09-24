# Library Overview

## Summary

This document provides an overview of the PostgreSQL comparison libraries integrated into the `diff-supa` project.

## Libraries

### pg-diff-cli

- **Purpose**: PostgreSQL schema and data comparing CLI tool
- **Documentation MCP**: `@pg-diff-cli`
- **Repository MCP**: `pg-diff-cli-repo`
- **Local Location**: `@cli/`
- **Usage**: Command-line interface for database comparison
- **Integration**: Accessed via `diff-supa diff` command

### pg-diff-api

- **Purpose**: PostgreSQL migration strategy for NodeJS
- **Documentation MCP**: `pg-diff-api-repo`
- **Local Location**: `@api/`
- **Usage**: Programmatic APIs for Node.js integration
- **Integration**: Available for custom Node.js applications

## MCP Tools Available

Both libraries provide access to comprehensive MCP tools for documentation and code exploration:

### pg-diff-cli MCP Tools

- `fetch_pg_diff_documentation`
- `search_pg_diff_documentation`
- `search_pg_diff_code`
- `fetch_generic_url_content`

### pg-diff-api MCP Tools

- `fetch_pg_diff_api_documentation`
- `search_pg_diff_api_documentation`
- `search_pg_diff_api_code`
- `fetch_generic_url_content`

## Documentation Structure

- `context/pg-diff-cli.md`: Detailed documentation for CLI tool
- `context/pg-diff-api.md`: Detailed documentation for API library
- `context/library-overview.md`: This overview document
- `context/diff-command.md`: Integration documentation for diff command
- `context/sync-command.md`: Integration documentation for sync command

## Usage Context

These libraries are integrated into the `diff-supa` project to provide comprehensive PostgreSQL database comparison and migration capabilities, supporting both command-line and programmatic usage patterns.
