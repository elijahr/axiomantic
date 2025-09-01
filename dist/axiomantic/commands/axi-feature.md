# /axi-feat - End-2-End Feat Dev

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Plan & implement new feat following Axiomantic principles w/ comprehensive codebase integration 4: **$ARGUMENTS**

> **💡 Best Results**: Start by deeply understanding existing codebase patterns before planning any new feat. This ensures seamless integration.

## 🚨 CRITICAL SUCCESS FACTORS

**Codebase-First Approach**: Always survey existing code before planning 2 ensure natural integration, not foreign additions.

**Five-Pillar Valid8n**: Every feat must pass all valid8n pillars before comp - no exceptions.

**Plan Integration**: Substantial feats automatically integrate w/ `/axi-plan` 4 multi-assistant coordination.

## Feat Dev 🔄

### Phase 1: Deep Codebase Anal & Rule Integration
**Before any feat planning:**

1. **Active Rules Assessment**
   - Load user overrides (`.axiomantic/user-overrides.md`)
   - Load proj overrides (`.axiomantic/proj-overrides.md`)
   - Resolve rule conflicts using precedence (User > Proj > Base)
   - Note valid8n reqs that will apply 2 this feat

2. **Survey Arch w/ Valid8n Ctx**
   - Read relevant files 2 understand existing patterns
   - Identify established design patterns & conventions
   - Note current err handling & testing approaches
   - Map existing similar functionality
   - **Apply active rules**: Plan feat 2 follow discovered patterns + active rules

3. **Five-Pillar Pre-Assessment**
   - **Coding Standards**: What patterns must this feat follow?
   - **Docs**: What docs will be required?
   - **Proj Patterns**: How does this integrate w/ existing arch?
   - **Testing**: What testing approach is needed 4 this feat type?
   - **Instr Quality**: If adding cmds/🔄, what standards apply?

### Phase 2: Reqs & Risk Anal

1. **Req Clarity**
   - What exactly needs 2 be built?
   - Who are stakeholders & users?
   - What are acceptance criteria & constraints?

2. **Arch Impact Assessment**
   - How does this fit existing arch?
   - What comps need creation/mod?
   - Are there breaking changes or migration needs?

3. **Risk & Trade-off Anal**
   - What could go wrong during impl?
   - How will this affect existing functionality?
   - What are rollback strategies?

### Phase 3: Context-Informed Planning

**Planning Hierarchy by Complexity:**
- **Simple (<1hr)**: Inline validation only
- **Medium (1-4hr)**: Create `.tmp/[feature-name]-plan.md`
- **Complex (>4hr)**: Create/update `ROADMAP.md`

**Plan Discovery Process:**
1. Check existing plans: `ROADMAP.md` > `PROJECT_PLAN.md` > README roadmap > `TODO.md`
2. If multiple plans exist → Ask user which to follow
3. If no plans → Ask user if they want comprehensive planning first

**Integration Strategy:**
- Map to existing shared services and utilities
- Plan data model compatibility and migrations
- Design coordination with existing systems

### Phase 4: Technical Design & Validation-Aware Architecture

1. **Design Pattern Selection**
   - Choose patterns consistent with existing codebase AND active rules
   - Define clear interfaces and contracts following project conventions
   - Plan data flow that aligns with current architecture + validation requirements

2. **Implementation Strategy with Built-in Validation**
   - File-level development sequence following project patterns
   - Incremental development milestones with validation checkpoints
   - Integration with existing build/deployment systems
   - **Validation planning**: Map each implementation step to Five-Pillar requirements

3. **Testing Strategy Aligned with Active Rules**
   - Unit testing approach following project standards + active testing rules
   - Integration testing requirements based on feature complexity
   - Test framework integration with existing test suites
   - Coverage goals based on active rules (project overrides may specify minimums)

### Phase 5: Plan Template Creation

```markdown
# [Feature] Implementation Plan

## Overview
**What**: [Brief description of functionality]
**Why**: [Business/technical justification]
**Integration**: [How it fits existing architecture]

## Active Rules & Validation Context
**Active User Overrides**: [Key user rules affecting this feature]
**Active Project Overrides**: [Key project rules affecting this feature]
**Validation Requirements**: [Specific Five-Pillar requirements for this feature]

## Codebase Analysis
**Existing Patterns**: [Relevant patterns discovered that must be followed]
**Dependencies**: [Existing code this relies on]
**Impact**: [Files/components that will change]
**Rule Compliance**: [How feature will comply with active rules]

## Implementation Phases
**Phase 1**: Planning/Setup (with validation planning)
**Phase 2**: Core Implementation (with continuous validation)
**Phase 3**: Integration/Testing (with Five-Pillar confirmation)

## Built-in Validation Strategy
**Standards**: [Coding standards compliance planned during development]
**Documentation**: [Documentation requirements integrated into development]
**Patterns**: [Project pattern consistency checked during implementation]
**Testing**: [Testing approach with coverage goals based on active rules]
**Instructions**: [Process-oriented structure if adding commands/agents]

## Success Criteria & Risk Mitigation
**Success**: [How we know it's complete + Five-Pillar compliance]
**Risks**: [What could go wrong and mitigation]
```

## Critical Assessment Questions

Before implementation, address:
- **Is this feature really needed?** Could existing functionality be extended?
- **Have we considered all edge cases?** What happens when things go wrong?
- **Is the design scalable?** How will it perform under load?
- **Does it follow existing patterns?** Or introduce unnecessary complexity?
- **Can it be tested effectively?** Is the design testable and maintainable?
- **What's the maintenance burden?** How much ongoing effort required?

## Five-Pillar Validation Planning

Plan validation for each pillar:

1. **Coding Standards**
   - Style guide compliance specific to this codebase
   - Error handling patterns consistent with existing code
   - Performance considerations based on project requirements

2. **Documentation**
   - API documentation following project patterns
   - Architecture documentation updates
   - User guides and examples

3. **Project Patterns**
   - Consistency with existing codebase patterns
   - Proper use of existing abstractions and utilities
   - Integration with existing configuration and setup

4. **Testing**
   - Comprehensive test coverage with meaningful assertions
   - Test patterns consistent with existing test suite
   - Integration with existing CI/CD pipeline

5. **Instruction Quality**
   - Command/agent files follow process-oriented structure
   - Clear cross-references and integration points
   - Process workflows rather than declarative rules

## Professional Dialogue Standards

**Push back constructively** if:
- Requirements are unclear or incomplete
- Proposed approach seems problematic
- Better alternatives should be considered
- Feature introduces unnecessary complexity
- Testing strategy is insufficient
- Integration planning is inadequate

## Milestone & Commit Management

**After completing significant milestones:**
1. **Self-validate first**: Complete all five validation pillars
2. **Prompt user to commit**: "This completes [milestone]. All validation pillars checked. Would you like to commit?"
3. **Use conventional commits**: `feat:`, `fix:`, `docs:`, `refactor:`
4. **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅, instructions ✅"

## Roadmap Integration with /axi-plan

**For substantial features automatically:**
- Integrate into existing project roadmaps via `/axi-plan`
- Create parallelizable work tracks for multi-assistant development
- Establish file-level ownership and conflict prevention
- Set up progress tracking and milestone management

## Output Format

1. **Codebase Analysis**: Architecture understanding and pattern recognition
2. **Feature Analysis**: Requirements, constraints, stakeholder needs
3. **Architectural Impact**: Integration points with existing systems
4. **Implementation Roadmap**: Step-by-step plan with file-level specificity
5. **Risk Assessment**: Potential issues and mitigation strategies
6. **Validation Plan**: Five-pillar compliance throughout development
7. **Integration Strategy**: Specific plans for seamless codebase integration
8. **Testing Strategy**: Comprehensive approach aligned with existing frameworks

## Success Criteria
- ✅ Deep codebase understanding achieved before planning
- ✅ Feature feels like natural extension, not foreign addition
- ✅ All five validation pillars addressed
- ✅ Clear implementation roadmap with realistic scope
- ✅ Integration strategy respects existing patterns
- ✅ Testing approach aligned with project standards
- ✅ Risk assessment and mitigation planned
- ✅ Professional dialogue maintained throughout

Remember: Better to spend time understanding and planning well than to implement poorly and refactor later. Every feature should exemplify Axiomantic principles while seamlessly extending the existing system.
