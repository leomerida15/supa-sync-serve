# Guía Completa: Migraciones y Seeds

Esta guía documenta todos los comandos necesarios para crear migraciones y aplicar seeds en el sistema `diff-supa`.

## 📋 Tabla de Contenidos

1. [Comandos de Migración](#comandos-de-migración)
2. [Comandos de Seeds](#comandos-de-seeds)
3. [Flujo de Trabajo Completo](#flujo-de-trabajo-completo)
4. [Configuración](#configuración)
5. [Ejemplos Prácticos](#ejemplos-prácticos)

## 🔧 Comandos de Migración

### 1. Generar Migración (Diff)

**Comando principal para crear migraciones:**

```bash
bun run dev diff -f config.json -c GobernAI.sync.config {{nombre_migracion}}
```

**Parámetros:**

- `-f config.json`: Archivo de configuración
- `-c GobernAI.sync.config`: Configuración de sincronización
- `{{nombre_migracion}}`: Nombre descriptivo de la migración

**Ejemplos:**

```bash
# Migración inicial
bun run dev diff -f config.json -c GobernAI.sync.config init

# Migración de nuevas tablas
bun run dev diff -f config.json -c GobernAI.sync.config add_user_tables

# Migración de cambios en esquema
bun run dev diff -f config.json -c GobernAI.sync.config update_schema_v2
```

### 2. Aplicar Migración

**Comando para aplicar migraciones pendientes:**

```bash
bun run dev sync
```

**O usando el comando directo:**

```bash
bun run dev diff --migrate-to-target GobernAI.sync.config
```

### 3. Migrar a Base de Datos Source

**Para aplicar migraciones a la base de datos source:**

```bash
bun run dev diff --migrate-to-source GobernAI.sync.config
```

### 4. Guardar Migración sin Ejecutar

**Para registrar una migración en el historial sin ejecutarla:**

```bash
bun run dev diff -s GobernAI.sync.config {{nombre_archivo_migracion}}
```

## 🌱 Comandos de Seeds

### 1. Aplicar Seeds a Source

**Para aplicar seeds a la base de datos source:**

```bash
bun run dev diff --seed-to-source GobernAI.sync.config
```

### 2. Aplicar Seeds a Target

**Para aplicar seeds a la base de datos target:**

```bash
bun run dev diff --seed-to-target GobernAI.sync.config
```

### 3. Comando de Seeds Manual

**Usando el comando sync interactivo:**

```bash
bun run dev sync
# Seleccionar la opción de seeds en el menú interactivo
```

## 🔄 Flujo de Trabajo Completo

### Escenario 1: Desarrollo Inicial

```bash
# 1. Generar migración inicial
bun run dev diff -f config.json -c GobernAI.sync.config init

# 2. Aplicar migración a target
bun run dev diff --migrate-to-target GobernAI.sync.config

# 3. Aplicar seeds iniciales
bun run dev diff --seed-to-target GobernAI.sync.config
```

### Escenario 2: Cambios en Desarrollo

```bash
# 1. Generar migración de cambios
bun run dev diff -f config.json -c GobernAI.sync.config add_new_features

# 2. Aplicar migración
bun run dev diff --migrate-to-target GobernAI.sync.config

# 3. Aplicar seeds si es necesario
bun run dev diff --seed-to-target GobernAI.sync.config
```

### Escenario 3: Sincronización Completa

```bash
# 1. Usar comando sync interactivo
bun run dev sync

# 2. Seleccionar opciones del menú:
#    - init: Para inicializar configuración
#    - sync: Para sincronización completa
```

## ⚙️ Configuración

### Archivo de Configuración (config.json)

```json
{
	"GobernAI.sync.config": {
		"sourceClient": {
			"host": "aws-0-us-east-2.pooler.supabase.com",
			"port": 5432,
			"database": "postgres",
			"user": "postgres.qklwlyoenlffxnwrkxuc",
			"password": "Kw07OePOyVZKRHjy",
			"applicationName": "GobernAI dev",
			"ssl": false
		},
		"targetClient": {
			"host": "aws-1-us-east-2.pooler.supabase.com",
			"port": 5432,
			"database": "postgres",
			"user": "postgres.yvztwadvzlapiqjkmabb",
			"password": "aVsmeJBn5J35ii1W",
			"applicationName": "GobernAI QA",
			"ssl": false
		},
		"compareOptions": {
			"author": "Dimas Merida",
			"getAuthorFromGit": true,
			"outputDirectory": "db_migration",
			"schemaCompare": {
				"namespaces": ["public", "knowledge", "ai"],
				"dropMissingTable": false,
				"dropMissingView": false,
				"dropMissingFunction": false,
				"dropMissingAggregate": false,
				"dropMissingType": false,
				"dropMissingEnum": false,
				"roles": [],
				"rowLevelSecurity": true
			},
			"dataCompare": {
				"enable": false,
				"tables": []
			}
		},
		"migrationOptions": {
			"patchesDirectory": "db_migration",
			"historyTableName": "schema_migrations",
			"historyTableSchema": "supabase_migrations",
			"seeds": "seeds",
			"seedTableName": "seed_files"
		}
	}
}
```

## 📝 Ejemplos Prácticos

### Ejemplo 1: Migración de Nueva Tabla

```bash
# 1. Crear migración
bun run dev diff -f config.json -c GobernAI.sync.config add_products_table

# 2. Verificar archivo generado en db_migration/
ls db_migration/

# 3. Aplicar migración
bun run dev diff --migrate-to-target GobernAI.sync.config
```

### Ejemplo 2: Migración con Foreign Keys

```bash
# 1. Crear migración que incluye relaciones
bun run dev diff -f config.json -c GobernAI.sync.config add_user_relationships

# 2. El sistema detectará automáticamente foreign keys
# 3. Aplicar migración
bun run dev diff --migrate-to-target GobernAI.sync.config
```

### Ejemplo 3: Seeds de Datos Iniciales

```bash
# 1. Aplicar seeds a target
bun run dev diff --seed-to-target GobernAI.sync.config

# 2. Verificar datos en base de datos target
```

### Ejemplo 4: Sincronización Completa

```bash
# 1. Usar comando interactivo
bun run dev sync

# 2. En el menú seleccionar:
#    - "init" para inicializar
#    - "sync" para sincronización completa
```

## 🔍 Comandos de Diagnóstico

### Verificar Estado de Migraciones

```bash
# Ver archivos de migración generados
ls -la db_migration/

# Ver contenido de migración específica
cat db_migration/{{archivo_migracion}}.sql
```

### Verificar Configuración

```bash
# Verificar configuración
bun run dev diff --help

# Generar nueva configuración
bun run dev diff --generate-config mi-configuracion
```

## 📁 Estructura de Archivos

```
diff-supa/
├── config.json                 # Configuración principal
├── db_migration/              # Archivos de migración generados
│   ├── 20250926145856631_init.sql
│   └── ...
├── seeds/                     # Archivos de seeds (si existen)
└── context/                   # Documentación
    ├── migration-and-seeds-guide.md
    └── ...
```

## ⚠️ Notas Importantes

1. **Siempre usar `bun run dev diff`** en lugar de `bun run pg-diff`
2. **Verificar configuración** antes de ejecutar migraciones
3. **Hacer backup** de bases de datos antes de aplicar migraciones
4. **Revisar archivos SQL generados** antes de aplicar
5. **Usar nombres descriptivos** para las migraciones

## 🚀 Comandos Rápidos de Referencia

```bash
# Generar migración
bun run dev diff -f config.json -c GobernAI.sync.config {{nombre}}

# Aplicar migración
bun run dev diff --migrate-to-target GobernAI.sync.config

# Aplicar seeds
bun run dev diff --seed-to-target GobernAI.sync.config

# Sincronización interactiva
bun run dev sync

# Ver ayuda
bun run dev diff --help
```

---

**Documentación generada para diff-supa v0.8.0**
**Última actualización: 2025-09-26**
