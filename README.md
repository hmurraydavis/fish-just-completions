# fish-just-completions

Fish shell completions for [just](https://github.com/casey/just), a command runner.

This plugin provides dynamic autocompletions for `just` commands based on the recipes defined in your `justfile` (or `.justfile`) in the current directory or any parent directory.

## Features

- **Dynamic completions**: Automatically discovers recipes from `justfile` in current or parent directories
- **Help text**: Shows recipe descriptions/comments as completion descriptions
- **Smart discovery**: Uses `just --list` to search up the directory tree, find the nearest justfile, and present completions for the just commands in scope

## Installation

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```fish
fisher install hmurraydavis/fish-just-completions
```

Or add to your `fishfile`:

```
hmurraydavis/fish-just-completions
```

### Manual Installation

**Option 1: Use the install script (easiest)**
```fish
cd fish-just-completions
./install.fish
```

**Option 2: Copy completion file directly**
```fish
cp fish-just-completions/completions/just.fish ~/.config/fish/completions/just.fish
```

After manual installation, restart your Fish shell or run:
```fish
source ~/.config/fish/completions/just.fish
```

## Usage

Once installed, simply type `just ` and press Tab to see available recipes.

The completions automatically update based on the `justfile` in your current directory or any parent directory.

## How It Works

The completion script:
1. Runs `just --list` (which automatically searches for `justfile` or `.justfile` in current and parent directories)
2. Parses the output to extract recipe names and help text
3. Provides completions with descriptions shown in the completion menu

The completions are generated dynamically each time you press Tab, so they always reflect the current justfile.

## Requirements

- [Fish shell](https://fishshell.com/) 3.0+
- [just](https://github.com/casey/just) installed and in PATH
