# Axiomantic Build Process

This document describes how to build the distribution files for Axiomantic.

## Overview

The build process should:
1. Clear/create the `dist` directory
2. Copy all necessary files to `dist`
3. Run axitxt compression on all markdown files in `dist` to reduce token usage
4. Verify `dist` filesystem
5. Test the install script

## Key Benefits
- **Token Efficiency**: Axitxt compression reduces instruction file sizes by 35-50%
- **Conditional Loading**: Only relevant instructions loaded based on task context
- **No Duplication**: Single AGENT.md file used by both Claude Code and OpenCode via symlinks

## Build Steps

Please execute the following:

1. **Delete existing dist directory:**
   ```bash
   rm -rf dist # Clean any existing files
   mkdir -p dist
   ```

2. **Copy core files:**
   ```bash
   # Copy entire axiomantic directory structure
   cp -r axiomantic dist/

   # Copy install script
   cp install.sh dist/
   cp install.ps1 dist/

   # Copy README
   cp README.md dist/
   cp LICENSE dist/
   ```

3. **Recursively run axitxt compression on markdown files in dist/ EXCEPT for dist/commands/axitxt.md, LICENSE, and README.md:**
   See axiomantic/commands/axitxt.md for axitxt compression instructions.

4. **Verify the build:**
   ```bash
   # Verify main files and structure
   ls -la dist/axiomantic/AGENT.md dist/install.sh dist/install.ps1
   ls -la dist/axiomantic/shared/
   ls -la dist/axiomantic/commands/
   ```

5. **Verify install.sh script behavior:**
   Create a temporary directory and run:
   ```bash
   # Verify that installation succeeds with no error output
   ./install.sh <path/to/tmp/dir>
   # Verify installed files
   cd <path/to/tmp/dir>
   test -f .axiomantic/shared/configuration-standards.md
   test -f .axiomantic/shared/documentation-standards.md
   test -f .axiomantic/shared/source-standards.md
   test -f .axiomantic/shared/test-guidelines.md
   test -f .axiomantic/commands/axicheck.md
   test -f .axiomantic/commands/axitxt.md
   test -f .axiomantic/commands/create-feature.md
   test -f .axiomantic/commands/optimize.md
   test -L .claude/commands/axicheck.md
   test -L .claude/commands/axitxt.md
   test -L .claude/commands/create-feature.md
   test -L .claude/commands/optimize.md
   test -L .opencode/command/axicheck.md
   test -L .opencode/command/axitxt.md
   test -L .opencode/command/create-feature.md
   test -L .opencode/command/optimize.md
   test -L AGENTS.md
   test -L CLAUDE.md
   ```

The resulting `dist/` directory should contain everything needed to distribute Axiomantic, with compressed instruction and command files to minimize size while preserving all functionality.

## Usage After Build

Users can then:
- Run `./install.sh` via curl or a downloaded copy of the project
- Use with Claude Code, OpenCode, or any other AI coding assistant
