# Axiomantic

**Professional Development Framework for Claude Code & OpenCode**

Axiomantic provides standardized coding practices, automated quality assurance, and systematic development workflows for AI-powered programming. Compatible with Claude Code and OpenCode environments.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Commands Reference](#commands-reference)
- [Usage](#usage)
- [Customization](#customization)
- [Development Impact](#development-impact)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Linux/macOS (One-Line Install)
```bash
curl -fsSL https://raw.githubusercontent.com/elijahr/axiomantic/devel/dist/install.sh | bash
```

### Windows (PowerShell)
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elijahr/axiomantic/devel/dist/install.ps1" -UseBasicParsing | Invoke-Expression
```

### Manual Installation
```bash
# Linux/macOS
git clone https://github.com/elijahr/axiomantic.git
cd axiomantic
./install.sh /path/to/your/project

# Windows
git clone https://github.com/elijahr/axiomantic.git
cd axiomantic
.\install.ps1 C:\path\to\your\project
```

### Installation Result

The installer creates:
- **AGENT.md** - Core instruction file
- **CLAUDE.md** → AGENT.md (symlink for Claude Code)
- **AGENTS.md** → AGENT.md (symlink for OpenCode)
- **.axiomantic/commands/** - Command library
- **.axiomantic/shared/** - Standards and guidelines
- **.claude/commands/** - Claude Code command symlinks
- **.opencode/command/** - OpenCode command symlinks

## Features

### Universal Compatibility
- Single installation works with Claude Code and OpenCode
- Shared instruction system with tool-specific symlinks
- No configuration conflicts or duplication

### Token Efficiency
- Axitxt compression reduces instruction sizes by 35-50%
- Conditional module loading based on task context
- Only relevant standards loaded when needed

### Professional Standards
Four development quality pillars:
1. **Code Standards** - Enforces consistent practices and patterns
2. **Documentation** - Comprehensive documentation requirements
3. **Architecture** - Consistent project structure and patterns
4. **Testing** - Complete test coverage and quality validation

### Command System

Seven specialized commands for professional development workflows:

- `/axi-validate` - Quality assurance and cleanup validation
- `/axi-plan` - Multi-assistant project orchestration
- `/axi-feature` - End-to-end feature development
- `/axi-test` - Comprehensive testing with failure analysis
- `/axi-compress` - Token-efficient text compression
- `/axi-rules` - Dynamic rule and customization management
- `/axi-implement` - Complete development workflow with TDD and debugging

## Commands Reference

### `/axi-validate` - Quality Assurance & Cleanup
Complete validation and cleanup system:
- **Four Pillars Validation** - Coding standards, documentation, architecture, testing completeness
- **Standards Compliance** - Validates against project standards
- **Comment Cleanup** - Removes redundant and session-based comments
- **Test Quality** - Enforces meaningful test coverage
- **Project Cleanup** - Removes temporary files and artifacts
- **Coverage Analysis** - Identifies testing gaps with actionable recommendations

### `/axi-plan` - Multi-Assistant Orchestration
Advanced coordination system for complex projects:
- **Multi-Assistant Coordination** - Enables multiple assistants to work on different project parts simultaneously
- **Global Locking System** - Prevents conflicts between assistants working on same files
- **File-Level Impact Analysis** - Maps planned changes to specific files for intelligent work distribution
- **Parallel Development** - Identifies tasks that can execute in parallel
- **Requirement Analysis** - Deep analysis of technical constraints and dependencies
- **Progress Tracking** - Milestone management and completion tracking

### `/axi-feature` - Feature Development Workflow
Complete feature implementation system:
- **Codebase Analysis** - Understanding existing architecture and patterns
- **Integration Planning** - Determines how features integrate with existing systems
- **Implementation Plans** - Step-by-step development roadmaps
- **Roadmap Integration** - Automatically integrates plans via `/axi-plan`
- **Standards Compliance** - Ensures features meet quality requirements

### `/axi-test` - Testing Workflow
Comprehensive testing with intelligent analysis:
- **Test Execution** - Systematic test running with detailed failure analysis
- **Coverage Analysis** - Identifies gaps and improvement recommendations
- **Quality Validation** - Ensures meaningful assertions and edge case coverage
- **Zero Tolerance** - Fixes root causes instead of allowing test skips
- **Framework Integration** - Handles test organization and framework-specific requirements

### `/axi-compress` - Text Compression
Token-efficient compression system:
- **Axitxt Compression** - Applies compression rules for 35-50% token reduction
- **Semantic Preservation** - Maintains meaning while maximizing efficiency
- **Context Awareness** - Adapts compression based on content type

### `/axi-rules` - Rule Management
Dynamic customization system:
- **User Rules** - Personal preferences stored locally
- **Project Rules** - Team-wide rules committed to repository
- **Rule Precedence** - Manages conflicts between rule types
- **Dynamic Updates** - Modify rules without reinstalling

### `/axi-implement` - Complete Development Workflow
Full implementation workflow with systematic debugging:
- **Plan Integration** - Discovers and selects work items from project plans
- **TDD Approach** - Test-first development when appropriate
- **6-Step Debugging Methodology** - Systematic approach to problem resolution
- **Work Item Management** - Progress tracking and completion validation
- **Quality Integration** - Applies all validation standards throughout development

## Usage

### Claude Code
After installation, Axiomantic instructions are automatically loaded. Use commands like `/axi-validate` or `/axi-plan` to access specialized workflows.

### OpenCode
The AGENTS.md file provides full compatibility with OpenCode's agent system, including all commands.

### Context-Aware Loading
Instructions automatically adapt based on current task:
- **Source code tasks** → Load development standards
- **Documentation tasks** → Load documentation guidelines
- **Testing tasks** → Load testing frameworks
- **Configuration tasks** → Load configuration standards

## Customization

Axiomantic supports project-specific customization:
- Add `project.instructions.md` for project-specific rules
- Modify `.axiomantic/shared/` files for custom standards
- Create additional commands in `.axiomantic/commands/`

## Development Impact

### Code Quality
- Enforces consistent coding standards across all files
- Removes redundant comments and maintains clean codebases
- Validates architectural patterns and design consistency

### Testing Standards
- Ensures comprehensive test coverage with meaningful assertions
- Prevents test skips and failures through root cause analysis
- Integrates testing throughout development workflow

### Token Efficiency
- Reduces AI instruction token usage by 35-50% through compression
- Loads only relevant context for specific development tasks
- Minimizes costs while maintaining development quality

### Team Coordination
- Enables multiple AI assistants to work on projects simultaneously
- Prevents conflicts through intelligent file locking and coordination
- Maintains consistent development practices across team members

### Development Speed
- Automates quality checks and validation processes
- Provides systematic debugging methodology for faster issue resolution
- Integrates planning and implementation in single workflow

## Contributing

Contributions welcome! See [issues](https://github.com/elijahr/axiomantic/issues) for current development priorities.

## License

MIT License - see [LICENSE](LICENSE) for details.
