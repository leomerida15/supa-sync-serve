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

| Task                        | Command                                                     | Description                            |
| --------------------------- | ----------------------------------------------------------- | -------------------------------------- |
| **1. Initialize**           | `bun dev`                                                   | Start CLI in development mode          |
| **2. Generate Migration**   | `bun run dev diff -f config.json -c {{namespace}} {{name}}` | Compare databases and create migration |
| **3. Apply Migration**      | `bun run dev sync`                                          | Apply pending migrations               |
| **4. Apply Seeds**          | `bun run dev diff --seed-to-source {{namespace}}`           | Apply seed data to source database     |
| **5. Apply Seeds (Target)** | `bun run dev diff --seed-to-target {{namespace}}`           | Apply seed data to target database     |
| **6. Setup Seeds**          | `mkdir seeds && touch seeds/001_initial_data.sql`           | Create seeds directory and sample file |

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
bun run dev diff -f config.json -c {{namespace}} {{name}}
```

**Parameters:**

- `-f config.json`: Specifies the configuration file
- `-c {{namespace}}`: Sets the sync configuration
- `{{name}}`: The name of the migration (replace with your desired name)

**Example:**

```bash
bun run dev diff -f config.json -c {{namespace}} add_user_table
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
bun run dev diff --seed-to-source {{namespace}}
```

**Apply seeds to target database:**

```bash
bun run dev diff --seed-to-target {{namespace}}
```

**Apply seeds to both databases:**

```bash
bun run dev diff --seed-to-source {{namespace}}
bun run dev diff --seed-to-target {{namespace}}
```

### Seed Implementation Guide

#### Understanding Seeds

Seeds are SQL files that populate your database with initial or reference data. The seed system automatically:

- Executes `.sql` files in alphabetical order
- Tracks executed seeds to prevent duplicates
- Uses MD5 hashing to detect changes in seed files
- Provides detailed execution feedback

#### Setting Up Seeds

1. **Create the seeds directory:**

```bash
mkdir seeds
```

2. **Configure seed settings in `config.json`:**

```json
{
	"GobernAI.sync.config": {
		"migrationOptions": {
			"seeds": "seeds",
			"seedTableName": "seed_files",
			"historyTableSchema": "supabase_migrations"
		}
	}
}
```

3. **Create seed files with `.sql` extension:**

```
seeds/
├── 001_initial_data.sql
├── 002_sample_users.sql
├── 003_config_data.sql
└── 004_test_data.sql
```

#### Seed File Examples

**001_initial_data.sql:**

```sql
-- Insert initial configuration data
INSERT INTO public.config (key, value, description) VALUES
('app_name', 'GobernAI', 'Application name'),
('version', '1.0.0', 'Current version'),
('environment', 'development', 'Environment type');

-- Insert default user roles
INSERT INTO public.user_roles (name, permissions) VALUES
('admin', '["read", "write", "delete", "manage_users"]'),
('user', '["read", "write"]'),
('guest', '["read"]');
```

**002_sample_users.sql:**

```sql
-- Insert sample users
INSERT INTO public.users (email, name, role_id, created_at) VALUES
('admin@gobernai.com', 'Admin User', 1, NOW()),
('user@gobernai.com', 'Regular User', 2, NOW()),
('test@gobernai.com', 'Test User', 2, NOW());
```

**003_config_data.sql:**

```sql
-- Insert application settings
INSERT INTO public.settings (category, key, value, type) VALUES
('ui', 'theme', 'dark', 'string'),
('ui', 'language', 'es', 'string'),
('api', 'rate_limit', '1000', 'number'),
('api', 'timeout', '30', 'number');
```

#### Running Seeds

**Execute seeds on source database (development):**

```bash
bun run dev diff --seed-to-source {{namespace}}
```

**Execute seeds on target database (QA/Production):**

```bash
bun run dev diff --seed-to-target {{namespace}}
```

**Execute seeds on both databases:**

```bash
bun run dev diff --seed-to-source {{namespace}}
bun run dev diff --seed-to-target {{namespace}}
```

#### Seed Execution Output

When running seeds, you'll see detailed output:

```
🌱 Starting seed execution for config: GobernAI.sync.config, target: source
📁 Seeds directory: seeds
🎯 Target database: GobernAI dev (aws-0-us-east-2.pooler.supabase.com)
📋 Found 4 seed files to execute
📊 Seed tracking table ensured: supabase_migrations.seed_files
🔄 Executing seed: 001_initial_data.sql
✅ Successfully executed: 001_initial_data.sql
🔄 Executing seed: 002_sample_users.sql
✅ Successfully executed: 002_sample_users.sql
🔄 Executing seed: 003_config_data.sql
✅ Successfully executed: 003_config_data.sql
⏭️  Skipping already executed seed: 004_test_data.sql
🎉 All seeds executed successfully!
```

#### Seed Management Features

- **Automatic Tracking**: Seeds are tracked in `supabase_migrations.seed_files` table
- **Change Detection**: Modified seed files are re-executed automatically
- **Skip Duplicates**: Already executed seeds are skipped unless content changes
- **Error Handling**: Failed seeds stop execution with detailed error messages
- **Alphabetical Order**: Seeds execute in filename order for predictable results

#### Best Practices for Seeds

1. **Use descriptive filenames** with numeric prefixes for execution order:
   - `001_initial_data.sql`
   - `002_sample_users.sql`
   - `003_config_data.sql`

2. **Make seeds idempotent** using `INSERT ... ON CONFLICT` or `UPSERT`:

   ```sql
   INSERT INTO public.users (email, name) VALUES ('admin@example.com', 'Admin')
   ON CONFLICT (email) DO UPDATE SET name = EXCLUDED.name;
   ```

3. **Include cleanup in development**:

   ```sql
   -- Development-only data cleanup
   DELETE FROM public.test_data WHERE environment = 'development';
   INSERT INTO public.test_data (name, value) VALUES ('test', 'value');
   ```

4. **Use transactions for related data**:

   ```sql
   BEGIN;
   INSERT INTO public.categories (name) VALUES ('Technology');
   INSERT INTO public.products (name, category_id) VALUES ('Laptop', 1);
   COMMIT;
   ```

5. **Separate environment-specific data**:
   - Use different seed files for different environments
   - Include environment checks in seed files
   - Document which seeds are for which environments

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
   bun run dev diff -f config.json -c {{namespace}} create_products_table
   ```

3. **Apply the migration:**

   ```bash
   bun run dev sync
   ```

4. **Implement seeds:**

   ```bash
   # Apply seeds to source database
   bun run dev diff --seed-to-source {{namespace}}

   # Apply seeds to target database
   bun run dev diff --seed-to-target {{namespace}}
   ```

#### Advanced Usage

For complex migrations, you can specify additional options:

```bash
bun run dev diff -f config.json -c {{namespace}} complex_migration --verbose --dry-run
```

#### Migration and Seeds Workflow

**Complete step-by-step process:**

1. **Initialize the CLI:**

   ```bash
   bun dev
   ```

2. **Setup seeds directory and files:**

   ```bash
   mkdir seeds
   # Create your seed files (e.g., 001_initial_data.sql, 002_sample_users.sql)
   ```

3. **Generate migration by comparing databases:**

   ```bash
   bun run dev diff -f config.json -c {{namespace}} init
   ```

4. **Apply migration to target database:**

   ```bash
   bun run dev sync
   ```

5. **Apply seed data to both databases:**

   ```bash
   # Apply seeds to source database (development)
   bun run dev diff --seed-to-source {{namespace}}

   # Apply seeds to target database (QA/Production)
   bun run dev diff --seed-to-target {{namespace}}
   ```

6. **Verify seed execution:**

   Check the `supabase_migrations.seed_files` table to see which seeds have been executed:

   ```sql
   SELECT * FROM supabase_migrations.seed_files ORDER BY path;
   ```

### Related Documentation

- [pg-diff Documentation](https://michaelsogos.github.io/pg-diff/)
- [Supabase Documentation](https://supabase.com/docs)
- [Bun Documentation](https://bun.sh/docs)
