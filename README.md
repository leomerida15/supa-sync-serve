# diff-supa

A powerful CLI tool for managing Supabase database migrations and synchronization using pg-diff.

## Installation

To install dependencies:

```bash
bun install
```

## Quick Start

To run the main application:

```bash
bun run index.ts
```

This project was created using `bun init` in bun v1.2.22. [Bun](https://bun.com) is a fast all-in-one JavaScript runtime.

## CLI Documentation

### Overview

The `diff-supa` CLI provides tools for:

- Database schema comparison and migration generation
- Supabase synchronization
- Migration management and application
- Seed data implementation

### Quick Reference - Essential Commands

| Task                      | Command                                                            | Description                            |
| ------------------------- | ------------------------------------------------------------------ | -------------------------------------- |
| **1. Initialize**         | `bun dev`                                                          | Start CLI in development mode          |
| **2. Generate Migration** | `bun run dev diff -f config.json -c GobernAI.sync.config {{name}}` | Compare databases and create migration |
| **3. Apply Migration**    | `bun run dev sync`                                                 | Apply pending migrations               |
| **4. Apply Seeds**        | `bun run dev diff --seed-to-source GobernAI.sync.config`           | Apply seed data to databases           |

### Available Commands

#### 1. Initialize Configuration

Start the CLI in development mode to begin configuration:

```bash
bun dev
```

This command starts the CLI in interactive mode, allowing you to run various operations.

#### 2. Generate Migration (Compare Databases)

Create a new migration by comparing database schemas:

```bash
bun run dev diff -f config.json -c GobernAI.sync.config {{name}}
```

**Parameters:**

- `-f config.json`: Specifies the configuration file
- `-c GobernAI.sync.config`: Sets the sync configuration
- `{{name}}`: The name of the migration (replace with your desired name)

**Example:**

```bash
bun run dev diff -f config.json -c GobernAI.sync.config add_user_table
```

**Note:** The correct command is `bun run dev diff` (not `bun run pg-diff`). This ensures proper foreign key relationship generation.

#### 3. Apply Migration

Apply pending migrations to the database:

```bash
bun run dev sync
```

This command applies any pending migrations that haven't been synchronized yet.

#### 4. Implement Seeds

Apply seed data to databases:

**Apply seeds to source database:**

```bash
bun run dev diff --seed-to-source GobernAI.sync.config
```

**Apply seeds to target database:**

```bash
bun run dev diff --seed-to-target GobernAI.sync.config
```

**Apply seeds to both databases:**

```bash
bun run dev diff --seed-to-source GobernAI.sync.config
bun run dev diff --seed-to-target GobernAI.sync.config
```

### Configuration

#### Configuration File Structure

The `config.json` file should contain database connection details and migration settings:

```json
{
	"source": {
		"host": "localhost",
		"port": 5432,
		"database": "source_db",
		"username": "user",
		"password": "password"
	},
	"target": {
		"host": "localhost",
		"port": 5432,
		"database": "target_db",
		"username": "user",
		"password": "password"
	}
}
```

#### Sync Configuration

The `GobernAI.sync.config` file defines synchronization rules and migration preferences.

### Best Practices

1. **Naming Conventions**: Use descriptive names for migrations (e.g., `add_user_authentication`, `update_product_schema`)

2. **Backup Strategy**: Always backup your database before applying migrations

3. **Testing**: Test migrations in a development environment before applying to production

4. **Version Control**: Commit migration files to version control for team collaboration

### Troubleshooting

#### Common Issues

1. **Connection Errors**: Verify database credentials in `config.json`
2. **Permission Issues**: Ensure the database user has necessary privileges
3. **Migration Conflicts**: Check for conflicting schema changes

#### Getting Help

For more information about pg-diff, visit: https://michaelsogos.github.io/pg-diff/

### Examples

#### Complete Workflow

1. **Initialize configuration:**

   ```bash
   bun dev
   ```

2. **Generate a migration (compare databases):**

   ```bash
   bun run dev diff -f config.json -c GobernAI.sync.config create_products_table
   ```

3. **Apply the migration:**

   ```bash
   bun run dev sync
   ```

4. **Implement seeds:**

   ```bash
   # Apply seeds to source database
   bun run dev diff --seed-to-source GobernAI.sync.config

   # Apply seeds to target database
   bun run dev diff --seed-to-target GobernAI.sync.config
   ```

#### Advanced Usage

For complex migrations, you can specify additional options:

```bash
bun run dev diff -f config.json -c GobernAI.sync.config complex_migration --verbose --dry-run
```

#### Migration and Seeds Workflow

**Step-by-step process:**

1. **Initialize the CLI:**

   ```bash
   bun dev
   ```

2. **Generate migration by comparing databases:**

   ```bash
   bun run dev diff -f config.json -c GobernAI.sync.config init
   ```

3. **Apply migration to target database:**

   ```bash
   bun run dev sync
   ```

4. **Apply seed data:**

   ```bash
   # Seeds to source
   bun run dev diff --seed-to-source GobernAI.sync.config

   # Seeds to target
   bun run dev diff --seed-to-target GobernAI.sync.config
   ```

### Related Documentation

- [pg-diff Documentation](https://michaelsogos.github.io/pg-diff/)
- [Supabase Documentation](https://supabase.com/docs)
- [Bun Documentation](https://bun.sh/docs)
