#!/usr/bin/env fish
# Installation script for fish-just-completions

set -l completion_dir ~/.config/fish/completions
set -l script_dir (dirname (status --current-filename))
set -l completion_file "$script_dir/completions/just.fish"

if not test -f "$completion_file"
    echo "Error: Completion file not found at $completion_file"
    exit 1
end

# Create completions directory if it doesn't exist
if not test -d "$completion_dir"
    echo "Creating $completion_dir..."
    mkdir -p "$completion_dir"
end

# Copy completion file
echo "Installing just completions to $completion_dir/just.fish..."
cp "$completion_file" "$completion_dir/just.fish"

if test $status -eq 0
    echo "✅ Successfully installed just completions!"
    echo ""
    echo "Restart your Fish shell or run:"
    echo "  source ~/.config/fish/completions/just.fish"
    echo ""
    echo "Then try: just <Tab>"
else
    echo "❌ Installation failed"
    exit 1
end
