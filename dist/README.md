# Axiomantic

Axiomantic is a multi-tool compatible development assistant that enforces professional coding standards across various AI development environments.

## Multi-Tool Compatibility

Axiomantic now supports installation and configuration in multiple AI coding tools:
- GitHub Copilot
- Cursor
- Cline
- Roo Code
- Kilo Code
- Continue

### Installation

To install Axiomantic in your project:
```bash
cd path/to/your/project
curl -O https://raw.githubusercontent.com/yourusername/axiomantic/main/dist/install.sh
chmod +x install.sh
./install.sh
```

This will:
1. Copy Axiomantic configuration files to your project root
2. Create tool-specific configurations for all supported assistants
3. Automatically clean up after installation

### Usage

After installation:
1. Start a new chat in your IDE
2. Select "Axiomantic Agent" from the chat mode dropdown
3. Follow the onboarding instructions in the first response

The configuration will automatically:
- Detect project-specific instructions from `project.instructions.md`
- Apply user preferences from `user.instructions.md`
- Adapt to your project's file structure

## Development Standards

Axiomantic enforces four pillars of quality:
1. ✅ Coding Standards
2. 📚 Documentation Completeness
3. 🧱 Project Pattern Consistency
4. 🧪 Testing Completeness

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute to Axiomantic.
