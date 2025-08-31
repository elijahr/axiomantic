# Axiomantic

**Professional AI Development Assistant for Claude Code & OpenCode**

Axiomantic is a comprehensive development framework that enforces professional coding standards and provides intelligent assistance for AI-powered development workflows. Built specifically for Claude Code and OpenCode, it delivers context-aware guidance and automated quality assurance.

## 🚀 Quick Installation

### One-Line Install (Recommended)
```bash
curl -fsSL https://raw.githubusercontent.com/elijahr/axiomantic/devel/dist/install.sh | bash
```

### Manual Installation
```bash
# Clone and install from source
git clone https://github.com/elijahr/axiomantic.git
cd axiomantic
./install.sh /path/to/your/project
```

### What Gets Installed

The installer creates:
- **AGENT.md** - Main instruction file
- **CLAUDE.md** → AGENT.md (symlink for Claude Code)  
- **AGENTS.md** → AGENT.md (symlink for OpenCode)
- **.axiomantic/commands/** - Slash commands (`/axicheck`, `/optimize`, `/create-feature`, `/axitxt`)
- **.axiomantic/shared/** - Modular instruction library with conditional loading
- **.claude/commands/** - Claude Code command symlinks
- **.opencode/command/** - OpenCode command symlinks

## ✨ Key Features

### 🎯 **Universal Compatibility**
- Single installation works with both Claude Code and OpenCode
- Shared instruction file with tool-specific symlinks
- No duplication, no conflicts

### ⚡ **Token Efficiency** 
- Axitxt compression reduces instruction sizes by 35-50%
- Conditional module loading based on task context
- Only relevant instructions loaded when needed

### 🛠️ **Professional Standards**
Four pillars of development quality:
1. **🔍 Code Standards** - Enforces best practices and patterns
2. **📚 Documentation** - Comprehensive docs and comments
3. **🏗️ Architecture** - Consistent project structure
4. **🧪 Testing** - Complete test coverage and quality

### 📋 **Intelligent Commands**

- **`/axicheck`** - Comprehensive code analysis and quality assessment
- **`/optimize`** - Performance optimization and code improvements  
- **`/create-feature`** - Guided feature development workflow
- **`/axitxt`** - Text compression for token efficiency

## 🔧 Usage

### Claude Code
After installation, Axiomantic instructions are automatically loaded. Use slash commands like `/axicheck` to access specialized workflows.

### OpenCode  
The AGENTS.md file provides full compatibility with OpenCode's agent system, including all slash commands.

### Context-Aware Loading
Instructions automatically adapt based on your current task:
- **Source code tasks** → Load development standards
- **Documentation tasks** → Load documentation guidelines  
- **Testing tasks** → Load testing frameworks
- **Configuration tasks** → Load config standards

## 🎨 Customization

Axiomantic supports project-specific customization:
- Add `project.instructions.md` for project-specific rules
- Modify `.axiomantic/shared/` files for custom standards
- Create additional slash commands in `.axiomantic/commands/`

## 📊 Benefits

- **Faster Development** - Automated quality checks and suggestions
- **Consistent Quality** - Enforced standards across all code
- **Reduced Token Usage** - Compressed instructions save costs
- **Universal Workflow** - Same setup works across AI tools
- **Contextual Intelligence** - Right guidance at the right time

## 🤝 Contributing

Contributions welcome! See [issues](https://github.com/elijahr/axiomantic/issues) for current development priorities.

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

**Ready to elevate your AI development workflow?**  
Install Axiomantic today and experience professional-grade AI assistance.