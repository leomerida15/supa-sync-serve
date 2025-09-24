# pg-diff-api Documentation

## Overview

`pg-diff-api` is a PostgreSQL migration strategy library for NodeJS that provides APIs for integrating database comparison and migration functionality into Node.js projects.

## Documentation Source

- **MCP Documentation**: `pg-diff-api-repo`
- **Local Location**: `@api/`
- **Official Documentation**: https://michaelsogos.github.io/pg-diff/
- **Repository**: https://github.com/michaelsogos/pg-diff-api

## Description

`pg-diff-api` offers programmatic APIs built to be integrated into Node.js projects. Unlike the CLI version, this library provides JavaScript/TypeScript interfaces for database comparison and migration operations.

## Key Features

### CompareApi.js

Core comparison functionality including:

- **compare()**: Main comparison method for databases
- **collectSchemaObjects()**: Collects schema objects from databases
- **compareDatabaseObjects()**: Compares database-level objects
- **compareTables()**: Compares table structures
- **compareTableColumns()**: Compares individual table columns
- **compareViews()**: Compares database views
- **compareFunctions()**: Compares stored functions
- **compareSequences()**: Compares sequences
- **compareTriggers()**: Compares triggers
- **compareIndexes()**: Compares indexes
- **compareConstraints()**: Compares constraints

### CatalogApi.js

Database catalog information retrieval:

- **retrieveAllSchemas()**: Retrieves all schemas from database
- **retrieveSchemas()**: Retrieves specific schemas
- **retrieveTables()**: Retrieves table information
- **retrieveViews()**: Retrieves view information
- **retrieveFunctions()**: Retrieves function information
- **retrieveSequences()**: Retrieves sequence information
- **retrieveTriggers()**: Retrieves trigger information
- **retrieveIndexes()**: Retrieves index information
- **retrieveConstraints()**: Retrieves constraint information

## Integration Approach

This API is designed for programmatic use in Node.js applications where you need to:

- Compare database schemas programmatically
- Generate migration scripts in code
- Build custom database synchronization tools
- Integrate database comparison into CI/CD pipelines
- Create custom database management interfaces

## Available MCP Tools

When working with `pg-diff-api` through the MCP system, you have access to:

- `fetch_pg_diff_api_documentation`: Fetch complete API documentation
- `search_pg_diff_api_documentation`: Search within API documentation
- `search_pg_diff_api_code`: Search for specific API code examples
- `fetch_generic_url_content`: Fetch content from referenced URLs

## Usage Notes

- Built specifically for Node.js integration
- Provides both high-level comparison methods and granular catalog APIs
- Supports comprehensive PostgreSQL object comparison
- Designed for programmatic database migration workflows
- Can be integrated into existing Node.js applications and build processes
