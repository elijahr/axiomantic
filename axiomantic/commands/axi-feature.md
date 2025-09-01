# /axi-feature - End-to-End Feature Development

Plan and implement a new feature following Axiomantic principles with comprehensive codebase integration for: **$ARGUMENTS**

## Comprehensive Feature Development Framework

### Phase 1: Codebase Analysis & Deep Understanding

**Before any feature planning, achieve deep codebase understanding:**

1. **Survey the Codebase**
   - Read relevant files to understand existing architecture
   - Identify existing components and their relationships
   - Note current patterns and conventions
   - Understand project constraints and infrastructure
   - Map out existing similar functionality

2. **Pattern Recognition**
   - How do existing features handle similar concerns?
   - What design patterns are established in this codebase?
   - How is error handling typically implemented?
   - What testing patterns are used?
   - How is configuration and deployment managed?

3. **Architectural Context**
   - Where does this feature fit in the overall system?
   - What existing interfaces and abstractions can be leveraged?
   - How will this feature interact with existing components?
   - Are there shared utilities or services to use?

### Phase 2: Requirement Analysis & Planning

1. **Requirement Analysis**
   - What exactly needs to be built?
   - Who are the stakeholders and users?
   - What are the acceptance criteria?
   - What are the constraints and assumptions?

2. **Architectural Assessment**
   - How does this feature fit into the existing codebase?
   - What existing patterns and conventions should be followed?
   - What components need to be created or modified?
   - Are there any architectural impacts or considerations?

3. **Risk Analysis**
   - What could go wrong during implementation?
   - What are the potential breaking changes?
   - How will this affect existing functionality?
   - What are the rollback strategies?

### Phase 3: Feature Integration Planning

**Context-Informed Planning Process:**

1. **Step Back & Survey**: Read relevant files, understand architecture, identify components, note constraints
2. **Internal Dialogue**: Question the problem, approaches, risks/trade-offs, system interactions  
3. **Context-Informed Planning**: Reflect codebase patterns, infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review against codebase, check assumptions, ensure actionable/specific, consider alternatives

**Integration Strategy:**
- How does this feature integrate with existing systems?
- What shared services or utilities will be used?
- How will this feature handle existing data models?
- What migration or compatibility strategies are needed?

### Phase 4: Technical Design & Architecture

1. **Technical Design**
   - What's the overall approach and architecture?
   - Which design patterns are most appropriate for this codebase?
   - How will data flow through the system?
   - What are the key interfaces and contracts?
   - How does this align with existing architectural patterns?

2. **Implementation Strategy**
   - What files need to be created or modified?
   - What's the sequence of development steps?
   - How can the feature be developed incrementally?
   - What are the key milestones and checkpoints?
   - How does this integrate with existing build and deployment systems?

### Phase 5: Detailed Implementation Plan

**Planning Hierarchy Integration:**

**Complexity Guidelines**: 
- Simple (<1hr) = inline validation
- Medium (1-4hr) = .tmp plan  
- Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**Plan Template:**
```markdown
# [Feature] Implementation Plan

## Overview: [Brief description of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core Implementation → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes validation | Risk mitigation]
```

1. **Development Steps**
   - Step-by-step implementation plan with file-level detail
   - Dependencies between different parts
   - Testable milestones for incremental delivery
   - Integration points with existing code
   - Build system integration requirements

2. **Testing Strategy**
   - Unit testing approach and coverage targets following project standards
   - Integration testing requirements
   - End-to-end testing scenarios
   - Performance testing considerations
   - Test framework integration with existing test suites

### Phase 6: Roadmap Integration

**Automatic Integration with /axi-plan:**

When creating substantial feature plans, automatically coordinate with project planning:
- Integrate feature plans into existing project roadmaps via `/axi-plan`
- Create parallelizable work tracks for multi-assistant development
- Establish file-level ownership and conflict prevention
- Set up progress tracking and milestone management
- Enable coordination across multiple development sessions

### Phase 7: Four-Pillar Validation Planning

Plan validation against each Axiomantic pillar:

1. **Coding Standards** 
   - Style guide compliance specific to this codebase
   - Code quality metrics and standards
   - Error handling patterns consistent with existing code
   - Performance considerations based on project requirements

2. **Documentation** 
   - API documentation following project patterns
   - User guides and examples
   - Architecture documentation updates
   - Inline comments explaining complex business logic

3. **Project Patterns** 
   - Consistency with existing codebase patterns
   - Adherence to established conventions
   - Proper use of existing abstractions and utilities
   - Integration with existing configuration and setup

4. **Testing** 
   - Comprehensive test coverage with meaningful assertions
   - Test patterns consistent with existing test suite
   - Edge case coverage appropriate for this feature
   - Integration with existing CI/CD pipeline

### Phase 8: Milestone & Commit Management

**After completing significant milestones or plan phases:**

- **Self-validate first**: Complete all four validation pillars before considering milestone complete
- **Prompt user to commit**: "This completes [milestone/phase]. All validation pillars checked. Would you like to commit these changes before continuing?"
- **Use conventional commit format**: `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"
- **Break large changes into logical commits** when working through multi-step plans

**Commit Message Templates:**

**For validated feature milestones:**
```
feat: implement [feature name] core functionality

- Add [specific components/functions]
- Create [specific files/modules]
- Include [specific test coverage]
- Update [documentation/configs]

Validated: coding standards, documentation, project patterns, testing
```

## Critical Assessment Questions

Before starting implementation, address:

- **Is this feature really needed?** Could existing functionality be extended instead?
- **Have we considered all edge cases?** What happens when things go wrong?
- **Is the design scalable?** How will it perform under load?
- **Does it follow existing patterns?** Or does it introduce unnecessary complexity?
- **Can it be tested effectively?** Is the design testable and maintainable?
- **What's the maintenance burden?** How much ongoing effort will this require?
- **How does it integrate with existing features?** Are there conflicts or synergies?
- **Does it respect existing architectural decisions?** Or does it fight against established patterns?

## Professional Dialogue

**Push back constructively** if:
- Requirements are unclear or incomplete
- The proposed approach seems problematic  
- There are better alternatives to consider
- The feature introduces unnecessary complexity
- Testing strategy is insufficient
- Integration with existing code is poorly planned
- Architectural patterns are not being followed

**Your goal**: Deliver a feature that exemplifies Axiomantic principles of precision, elegance, robustness, and wisdom while seamlessly integrating with the existing codebase.

## Plan Creation Guidance

For substantial feature development with multiple phases, prompt user: "This looks like a substantial feature with multiple phases. Would you like me to create a project plan/roadmap first to track our progress? This helps ensure we don't miss steps and makes it easier to resume work later."

## Output Format

1. **Codebase Analysis**: Current architecture understanding and pattern recognition
2. **Feature Analysis**: Requirements, constraints, and stakeholder needs
3. **Architectural Impact**: How it fits into existing systems with detailed integration points
4. **Implementation Roadmap**: Detailed step-by-step plan with file-level specificity
5. **Risk Assessment**: What could go wrong and mitigation strategies
6. **Validation Plan**: How to ensure Axiomantic standards are met throughout development
7. **Integration Strategy**: Specific plans for integrating with existing codebase patterns
8. **Testing Strategy**: Comprehensive testing approach aligned with existing test frameworks

Remember: Better to spend time understanding the codebase and planning well than to implement poorly and refactor later. Every feature should feel like a natural extension of the existing system, not a foreign addition.