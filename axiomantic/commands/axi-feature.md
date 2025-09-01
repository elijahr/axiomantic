# /axi-feature - End-to-End Feature Development

Plan and implement a new feature following Axiomantic principles with comprehensive codebase integration for: **$ARGUMENTS**

> **💡 Best Results**: Start by deeply understanding the existing codebase patterns before planning any new feature. This ensures seamless integration.

## 🚨 CRITICAL SUCCESS FACTORS

**Codebase-First Approach**: Always survey existing code before planning to ensure natural integration, not foreign additions.

**Four-Pillar Validation**: Every feature must pass all validation pillars before completion - no exceptions.

**Plan Integration**: Substantial features automatically integrate with `/axi-plan` for multi-assistant coordination.

## Feature Development Process

### Phase 1: Deep Codebase Analysis
**Before any feature planning:**

1. **Survey Architecture**
   - Read relevant files to understand existing patterns
   - Identify established design patterns and conventions
   - Note current error handling and testing approaches
   - Map existing similar functionality

2. **Pattern Recognition**
   - How do existing features handle similar concerns?
   - What configuration and deployment patterns exist?
   - How is the build system integrated?
   - Where are shared utilities and services?

3. **Integration Context**
   - Where does this feature fit in the overall system?
   - What existing interfaces can be leveraged?
   - How will this interact with existing components?

### Phase 2: Requirements & Risk Analysis

1. **Requirement Clarity**
   - What exactly needs to be built?
   - Who are the stakeholders and users?
   - What are acceptance criteria and constraints?

2. **Architectural Impact Assessment**
   - How does this fit existing architecture?
   - What components need creation/modification?
   - Are there breaking changes or migration needs?

3. **Risk & Trade-off Analysis**
   - What could go wrong during implementation?
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

### Phase 4: Technical Design & Architecture

1. **Design Pattern Selection**
   - Choose patterns consistent with existing codebase
   - Define clear interfaces and contracts
   - Plan data flow that aligns with current architecture

2. **Implementation Strategy**
   - File-level development sequence
   - Incremental development milestones
   - Integration with existing build/deployment systems

3. **Testing Strategy**
   - Unit testing approach following project standards
   - Integration testing requirements
   - Test framework integration with existing test suites

### Phase 5: Plan Template Creation

```markdown
# [Feature] Implementation Plan

## Overview
**What**: [Brief description of functionality]
**Why**: [Business/technical justification]
**Integration**: [How it fits existing architecture]

## Codebase Analysis
**Existing Patterns**: [Relevant patterns discovered]
**Dependencies**: [Existing code this relies on]
**Impact**: [Files/components that will change]

## Implementation Phases
**Phase 1**: Planning/Setup
**Phase 2**: Core Implementation
**Phase 3**: Integration/Testing

## Validation Strategy
**Standards**: [Coding standards compliance]
**Documentation**: [Documentation requirements]
**Patterns**: [Project pattern consistency]
**Testing**: [Testing approach and coverage]

## Success Criteria & Risk Mitigation
**Success**: [How we know it's complete]
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

## Four-Pillar Validation Planning

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
1. **Self-validate first**: Complete all four validation pillars
2. **Prompt user to commit**: "This completes [milestone]. All validation pillars checked. Would you like to commit?"
3. **Use conventional commits**: `feat:`, `fix:`, `docs:`, `refactor:`
4. **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"

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
6. **Validation Plan**: Four-pillar compliance throughout development
7. **Integration Strategy**: Specific plans for seamless codebase integration
8. **Testing Strategy**: Comprehensive approach aligned with existing frameworks

## Success Criteria
- ✅ Deep codebase understanding achieved before planning
- ✅ Feature feels like natural extension, not foreign addition
- ✅ All four validation pillars addressed
- ✅ Clear implementation roadmap with realistic scope
- ✅ Integration strategy respects existing patterns
- ✅ Testing approach aligned with project standards
- ✅ Risk assessment and mitigation planned
- ✅ Professional dialogue maintained throughout

Remember: Better to spend time understanding and planning well than to implement poorly and refactor later. Every feature should exemplify Axiomantic principles while seamlessly extending the existing system.
