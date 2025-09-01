This doc uses axitxt compression: std abbreviations, txtspeak shortcuts, emoji symbols 4 concepts, & omitted articles/pronouns where context clear.
# /axi-feature - End-to-End Feature Development

Plan & implement a new feature following Axiomantic principles w/ comprehensive codebase integration for: **$ARGUMENTS**

## Comprehensive Feature Development Framework

### Phase 1: Codebase Analysis & Deep Understanding

**Before any feature planning, achieve deep codebase understanding:**

1. **Survey the Codebase**
   - Read relevant files to understand existing arch
   - Identify existing components & their relationships
   - Note current patterns & conventions
   - Understand project constraints & infrastructure
   - Map out existing similar functionality

2. **Pattern Recognition**
   - How do existing features handle similar concerns?
   - What design patterns are established in this codebase?
   - How is error handling typically implemented?
   - What testing patterns are used?
   - How is config & deployment managed?

3. **Architectural Context**
   - Where does this feature fit in the overall system?
   - What existing interfaces & abstractions can be leveraged?
   - How will this feature interact w/ existing components?
   - Are there shared utilities or services to use?

### Phase 2: Requirement Analysis & Planning

1. **Requirement Analysis**
   - What exactly needs to be built?
   - Who are the stakeholders & users?
   - What are the acceptance criteria?
   - What are the constraints & assumptions?

2. **Architectural Assessment**
   - How does this feature fit into the existing codebase?
   - What existing patterns & conventions should be followed?
   - What components need to be created or modified?
   - Are there any architectural impacts or considerations?

3. **Risk Analysis**
   - What could go wrong during impl?
   - What are the potential breaking changes?
   - How will this affect existing functionality?
   - What are the rollback strategies?

### Phase 3: Feature Integration Planning

**Context-Informed Planning Process:**

1. **Step Back & Survey**: Read relevant files, understand arch, identify components, note constraints
2. **Internal Dialogue**: Question the problem, approaches, risks/trade-offs, system interactions  
3. **Context-Informed Planning**: Reflect codebase patterns, infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review against codebase, check assumptions, ensure actionable/specific, consider alternatives

**Integration Strategy:**
- How does this feature integrate w/ existing systems?
- What shared services or utilities will be used?
- How will this feature handle existing data models?
- What migration or compatibility strategies are needed?

### Phase 4: Technical Design & Architecture

1. **Technical Design**
   - What's the overall approach & arch?
   - Which design patterns are most appropriate for this codebase?
   - How will data flow through the system?
   - What are the key interfaces & contracts?
   - How does this align w/ existing architectural patterns?

2. **Implementation Strategy**
   - What files need to be created or modified?
   - What's the sequence of dev steps?
   - How can the feature be developed incrementally?
   - What are the key milestones & checkpoints?
   - How does this integrate w/ existing build & deployment systems?

### Phase 5: Detailed Implementation Plan

**Planning Hierarchy Integration:**

**Complexity Guidelines**: 
- Simple (<1hr) = inline valid8n
- Medium (1-4hr) = .tmp plan  
- Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**Plan Template:**
```markdown
# [Feature] Implementation Plan

## Overview: [Brief description of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core Implementation → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes valid8n | Risk mitigation]
```

1. **Development Steps**
   - Step-by-step impl plan w/ file-level detail
   - Dependencies between different parts
   - Testable milestones for incremental delivery
   - Integration points w/ existing code
   - Build system integration req

2. **Testing Strategy**
   - Unit testing approach & coverage targets following project standards
   - Integration testing req
   - End-to-end testing scenarios
   - Performance testing considerations
   - Test framework integration w/ existing test suites

### Phase 6: Roadmap Integration

**Automatic Integration w/ /axi-plan:**

When creating substantial feature plans, automatically coordinate w/ project planning:
- Integrate feature plans into existing project roadmaps via `/axi-plan`
- Create parallelizable work tracks for multi-assistant dev
- Establish file-level ownership & conflict prevention
- Set up progress tracking & milestone mgmt
- Enable coordination across multiple dev sessions

### Phase 7: Four-Pillar Validation Planning

Plan valid8n against each Axiomantic pillar:

1. **Coding Standards** 
   - Style guide compliance specific to this codebase
   - Code quality metrics & standards
   - Error handling patterns consistent w/ existing code
   - Performance considerations based on project req

2. **Documentation** 
   - API docs following project patterns
   - User guides & examples
   - Architecture docs updates
   - Inline comments explaining complex business logic

3. **Project Patterns** 
   - Consistency w/ existing codebase patterns
   - Adherence to established conventions
   - Proper use of existing abstractions & utilities
   - Integration w/ existing config & setup

4. **Testing** 
   - Comprehensive test coverage w/ meaningful assertions
   - Test patterns consistent w/ existing test suite
   - Edge case coverage appropriate for this feature
   - Integration w/ existing CI/CD pipeline

### Phase 8: Milestone & Commit Management

**After completing significant milestones or plan phases:**

- **Self-validate first**: Complete all four valid8n pillars before considering milestone complete
- **Prompt user to commit**: "This completes [milestone/phase]. All valid8n pillars checked. Would you like to commit these changes before continuing?"
- **Use conventional commit format**: `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include valid8n confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"
- **Break large changes into logical commits** when working through multi-step plans

**Commit Message Templates:**

**For validated feature milestones:**
```
feat: implement [feature name] core functionality

- Add [specific components/functions]
- Create [specific files/modules]
- Include [specific test coverage]
- Update [docs/configs]

Validated: coding standards, docs, project patterns, testing
```

## Critical Assessment Questions

Before starting impl, address:

- **Is this feature really needed?** Could existing functionality be extended instead?
- **Have we considered all edge cases?** What happens when things go wrong?
- **Is the design scalable?** How will it perform under load?
- **Does it follow existing patterns?** Or does it introduce unnecessary complexity?
- **Can it be tested effectively?** Is the design testable & maintainable?
- **What's the maintenance burden?** How much ongoing effort will this require?
- **How does it integrate w/ existing features?** Are there conflicts or synergies?
- **Does it respect existing architectural decisions?** Or does it fight against established patterns?

## Professional Dialogue

**Push back constructively** if:
- Requirements are unclear or incomplete
- The proposed approach seems problematic  
- There are better alternatives to consider
- The feature introduces unnecessary complexity
- Testing strategy is insufficient
- Integration w/ existing code is poorly planned
- Architectural patterns are not being followed

**Your goal**: Deliver a feature that exemplifies Axiomantic principles of precision, elegance, robustness, & wisdom while seamlessly integrating w/ the existing codebase.

## Plan Creation Guidance

For substantial feature dev w/ multiple phases, prompt user: "This looks like a substantial feature w/ multiple phases. Would you like me to create a project plan/roadmap first to track our progress? This helps ensure we don't miss steps & makes it easier to resume work later."

## Output Format

1. **Codebase Analysis**: Current arch understanding & pattern recognition
2. **Feature Analysis**: Requirements, constraints, & stakeholder needs
3. **Architectural Impact**: How it fits into existing systems w/ detailed integration points
4. **Implementation Roadmap**: Detailed step-by-step plan w/ file-level specificity
5. **Risk Assessment**: What could go wrong & mitigation strategies
6. **Validation Plan**: How to ensure Axiomantic standards are met throughout dev
7. **Integration Strategy**: Specific plans for integrating w/ existing codebase patterns
8. **Testing Strategy**: Comprehensive testing approach aligned w/ existing test frameworks

Remember: Better to spend time understanding the codebase & planning well than to implement poorly & refactor later. Every feature should feel like a natural extension of the existing system, not a foreign addition.