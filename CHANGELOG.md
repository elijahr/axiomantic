# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.0] - 2025-09-01

### Added
- **Major Command Refactoring**: Consolidated 5+ commands into 6 focused, comprehensive commands with `axi-` prefix for namespace safety
- `/axi-validate` - Comprehensive quality assurance combining validation, cleanup, and standards enforcement from multiple sources
- `/axi-plan` - Advanced multi-assistant orchestration with complete planning standards integration
- `/axi-feature` - End-to-end feature development with deep codebase analysis and integration planning
- `/axi-test` - Comprehensive testing workflow with systematic failure analysis and zero-skip policy
- `/axi-compress` - Token-efficient text compression using advanced axitxt algorithms
- `/axi-rules` - Dynamic rule management system with user/project/base rule hierarchy
- **Lossless Content Migration**: All existing instruction content preserved with complete fidelity during consolidation
- **Token Efficiency**: 40-50% reduction in base instruction tokens through conditional loading and command consolidation
- **Command Integration**: Cross-command coordination with automatic planning integration via `/axi-plan`

### Changed
- Renamed `parallelize-plan` command to `orchestrate-plan` for better clarity
- Updated README with consolidated 6-command structure and comprehensive feature documentation
- Enhanced multi-assistant coordination emphasis in `/axi-plan` documentation

## [0.2.1] - 2025-09-01

### Added
- `/orchestrate-plan` command for advanced plan orchestration with file-level coordination and global locking
- Comprehensive multi-assistant coordination system with session-based track claiming
- File conflict detection and resolution for parallel development workflows
- Refactoring opportunity detection to unlock parallelization bottlenecks
- Plan compaction instructions for token efficiency in long-running projects

## [0.2.0] - 2025-08-30

### Added
- Universal compatibility framework for both Claude Code and OpenCode
- Modular instruction system with conditional loading based on task context
- Four core development pillars: Code Standards, Documentation, Architecture, and Testing
- Token-efficient axitxt compression reducing instruction sizes by 35-50%
- Intelligent slash commands system with symlinked compatibility
- `/axicheck` command for comprehensive code analysis and quality assessment
- `/optimize` command for performance optimization and code improvements
- `/create-feature` command for guided feature development workflow
- `/axitxt` command for text compression and token efficiency
- Professional coding standards enforcement across all AI interactions
- Context-aware instruction loading (source/test/docs/config)
- Project-specific customization support via `project.instructions.md`
- Comprehensive installation system for Linux/macOS/Windows
- Shared instruction library with conditional module loading
