#!/bin/bash

# Axiomantic Installation Script

set -euo pipefail

# Detect if script is being piped from curl (check if script itself doesn't exist locally)
if [[ ! -f "${BASH_SOURCE[0]}" ]] || [[ "${BASH_SOURCE[0]}" == "/dev/fd/"* ]]; then
    # Script is being piped, need to download files first
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"

    echo "Downloading Axiomantic..."
    curl -fsSL "https://codeload.github.com/elijahr/axiomantic/zip/refs/heads/devel" -o axiomantic.zip
    unzip -q axiomantic.zip "axiomantic-*/*" -d
    mv "axiomantic-*/dist" .
    rm -rf "axiomantic-*/" axiomantic.zip

    DIST_DIR="$TEMP_DIR/dist"
    IS_PIPED=true
else
    # Script is being run directly
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    # Check if we're running from repo root or dist directory
    if [[ -d "$SCRIPT_DIR/dist" ]]; then
        # Running from repo root
        DIST_DIR="$SCRIPT_DIR/dist"
    elif [[ -d "$SCRIPT_DIR/axiomantic" ]]; then
        # Running from dist directory
        DIST_DIR="$SCRIPT_DIR"
    else
        echo "Error: Cannot find axiomantic directory structure"
        exit 1
    fi
    IS_PIPED=false
fi

# Check if source directory exists
if [[ ! -d "$DIST_DIR" ]]; then
    echo "Error: dist directory not found at $DIST_DIR"
    exit 1
fi

# Determine target directory
if [[ -n "$1" ]]; then
    # Directory provided as argument
    TARGET_DIR="$1"
elif [[ "$IS_PIPED" == "true" ]]; then
    # Piped installation - prompt for directory
    echo ""
    echo "Axiomantic Installation"
    echo "======================="
    echo ""
    read -p "Install to current directory? [Y/n] " -r
    if [[ $REPLY =~ ^[Nn]$ ]]; then
        read -p "Enter installation directory: " TARGET_DIR
        if [[ -z "$TARGET_DIR" ]]; then
            echo "Error: No directory specified"
            exit 1
        fi
    else
        TARGET_DIR="."
    fi
else
    # Direct execution without argument - prompt for directory
    echo ""
    echo "Axiomantic Installation"
    echo "======================="
    echo ""
    read -p "Install to current directory? [Y/n] " -r
    if [[ $REPLY =~ ^[Nn]$ ]]; then
        read -p "Enter installation directory: " TARGET_DIR
        if [[ -z "$TARGET_DIR" ]]; then
            echo "Error: No directory specified"
            exit 1
        fi
    else
        TARGET_DIR="."
    fi
fi

# Create target directory if it doesn't exist
if [[ "$TARGET_DIR" != "." ]]; then
    mkdir -p "$TARGET_DIR"
fi

# Convert to absolute path for cleaner output
if [[ "$TARGET_DIR" == "." ]]; then
    TARGET_DIR="$(pwd)"
fi

echo ""
echo "Installing Axiomantic for Claude Code and OpenCode..."
echo ""


if [[ -L "$TARGET_DIR/AGENT.md" ]]; then
    rm "$TARGET_DIR/AGENT.md"
elif [[ -f "$TARGET_DIR/AGENT.md" ]]; then
    mv "$TARGET_DIR/CLAUDE.md" "$TARGET_DIR/AGENT.md.bak"
    echo "⚠️  Existing AGENT.md found, renamed to AGENT.md.bak"
fi
cp "$DIST_DIR/axiomantic/AGENT.md" "$TARGET_DIR/AGENT.md"
echo "✓ Installed AGENT.md to $TARGET_DIR/AGENT.md"

if [[ -L "$TARGET_DIR/CLAUDE.md" ]]; then
    rm "$TARGET_DIR/CLAUDE.md"
elif [[ -f "$TARGET_DIR/CLAUDE.md" ]]; then
    mv "$TARGET_DIR/CLAUDE.md" "$TARGET_DIR/CLAUDE.md.bak"
    echo "⚠️  Existing CLAUDE.md found, renamed to CLAUDE.md.bak"
fi

if [[ -L "$TARGET_DIR/AGENTS.md" ]]; then
    rm "$TARGET_DIR/AGENTS.md"
elif [[ -f "$TARGET_DIR/AGENTS.md" ]]; then
    mv "$TARGET_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md.bak"
    echo "⚠️  Existing AGENTS.md found, renamed to CLAUDE.md.bak"
fi

(cd "$TARGET_DIR" && ln -s AGENT.md CLAUDE.md)
echo "✓ Created CLAUDE.md symlink"

(cd "$TARGET_DIR" && ln -s AGENT.md AGENTS.md)
echo "✓ Created AGENTS.md symlink"

if [[ -d "$TARGET_DIR/axiomantic" ]]; then
    mv "$TARGET_DIR/axiomantic" "$TARGET_DIR/axiomantic.bak"  2>/dev/null
    echo "⚠️  Existing axiomantic/ directory found, renamed to axiomantic.bak"
fi

mkdir -p "$TARGET_DIR/.axiomantic"
cp -r "$DIST_DIR/axiomantic/commands" "$TARGET_DIR/.axiomantic/"
echo "✓ Installed Axiomantic commands to .axiomantic/commands/"
cp -r "$DIST_DIR/axiomantic/shared" "$TARGET_DIR/.axiomantic/"
echo "✓ Installed Axiomantic shared modules to .axiomantic/shared/"

mkdir -p "$TARGET_DIR/.claude/commands"
for cmd in ${TARGET_DIR}/.axiomantic/commands/*; do
    cmd_name=$(basename "$cmd")
    if [[ -L "$TARGET_DIR/.claude/commands/$cmd_name" ]]; then
        rm "$TARGET_DIR/.claude/commands/$cmd_name"
    elif [[ -f "$TARGET_DIR/.claude/commands/$cmd_name" ]]; then
        mv "$TARGET_DIR/.claude/commands/$cmd_name" "$TARGET_DIR/.claude/commands/$cmd_name.bak"
        echo "⚠️  Existing .claude/commands/$cmd_name found, renamed to $cmd_name.bak"
    fi
    (cd "$TARGET_DIR/.claude/commands" && ln -s "../../.axiomantic/commands/$cmd_name" "$cmd_name")
    echo "✓ Created claude symlink for $cmd_name"
done

mkdir -p "$TARGET_DIR/.opencode/command"
for cmd in ${TARGET_DIR}/.axiomantic/commands/*; do
    cmd_name=$(basename "$cmd")
    if [[ -L "$TARGET_DIR/.opencode/command/$cmd_name" ]]; then
        rm "$TARGET_DIR/.opencode/command/$cmd_name"
    elif [[ -f "$TARGET_DIR/.opencode/command/$cmd_name" ]]; then
        mv "$TARGET_DIR/.opencode/command/$cmd_name" "$TARGET_DIR/.opencode/command/$cmd_name.bak"
        echo "⚠️  Existing .opencode/command/$cmd_name found, renamed to $cmd_name.bak"
    fi
    (cd "$TARGET_DIR/.opencode/command" && ln -s "../../.axiomantic/commands/$cmd_name" "$cmd_name")
    echo "✓ Created opencode symlink for $cmd_name"
done

# Cleanup temp directory if piped
if [[ "$IS_PIPED" == "true" ]]; then
    cd /
    rm -rf "$TEMP_DIR"
fi

echo ""
echo "🎉 Axiomantic installation complete!"
echo ""
echo "Files installed:"
echo "  • AGENT.md - Base instruction file"
echo "  • CLAUDE.md -> AGENT.md (symlink for Claude Code)"
echo "  • AGENTS.md -> AGENT.md (symlink for OpenCode)"
echo "  • .axiomantic/commands/ - slash commands (/axicheck, /optimize, /create-feature, /axitxt)"
echo "  • .axiomantic/shared/ - Modular instruction library with conditional loading"
echo "  • .claude/commands/ - Claude Code slash commands (symlinks to .axiomantic/commands/*)"
echo "  • .opencode/command/ - opencode slash commands (symlinks to .axiomantic/commands/*)"
echo ""
echo "🎯 Both tools use the same AGENT.md file with conditional module loading."
echo "   Contextual instructions are loaded based on task (source/test/docs/config)"
echo ""
echo "Ready to use with Claude Code and OpenCode!"
