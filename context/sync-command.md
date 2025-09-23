# Sync Command

The `sync` command provides an interactive interface for database synchronization operations.

## Usage

```bash
diff-supa sync
```

## Description

This command launches an interactive menu with vertical navigation that allows you to select from available sync operations. Currently, the following options are available:

- **init**: Initialize sync configuration
- **sync**: Perform database sync

## Interactive Menu

When you run the sync command, you'll see a navigable menu where you can:

1. Use arrow keys to navigate between options
2. Press Enter to select an option
3. Press Ctrl+C to exit

## Available Options

### Init

- **Description**: Initialize sync configuration
- **Current Behavior**: Displays "Hola! You selected init option."

### Sync

- **Description**: Perform database sync
- **Current Behavior**: Displays "Hola! You selected sync option."

## Future Enhancements

The sync command is designed to be extensible. Additional options and functionality will be added as needed.
