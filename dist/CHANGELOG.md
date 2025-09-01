# Changelog

This doc uses axitxt compression: std abbreviations, txtspeak shortcuts, emoji symbols 4 concepts, & omitted articles/pronouns where context clear.

All notable changes 2 this proj will be documented in this file.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
& this proj adheres 2 [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.0] - 2025-09-01

### ✨ Added
- **🛠️ Major Cmd Refactoring**: Consolidated 5+ cmds into 6 focused, comprehensive cmds w/ `axi-` prefix 4 namespace safety
- `/axi-validate` - Comprehensive quality assurance combining valid8n, cleanup, & standards enforcement from multiple sources
- `/axi-plan` - Advanced multi-assistant orchestration w/ complete planning standards integration
- `/axi-feature` - End-2-end feature dev w/ deep codebase analysis & integration planning
- `/axi-test` - Comprehensive testing workflow w/ systematic failure analysis & zero-skip policy
- `/axi-compress` - Token-efficient text compression using advanced axitxt algorithms
- `/axi-rules` - Dynamic rule mgmt sys w/ user/proj/base rule hierarchy
- **Lossless Content Migration**: All existing instr content preserved w/ complete fidelity during consolidation
- **⚡ Token Efficiency**: 40-50% reduction in base instr tokens thru conditional loading & cmd consolidation
- **Cmd Integration**: Cross-cmd coordination w/ automatic planning integration via `/axi-plan`

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