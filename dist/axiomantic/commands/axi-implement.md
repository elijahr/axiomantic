# /axi-implement - Complete Dev Workflow

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Execute complete dev workflow w/ plan integration, TDD approach, & systematic debugging 4: **$ARGUMENTS**

> **💡 Best Results**: Always discover & analyze existing plans before starting impl 2 ensure coordinated dev.

## 🚨 CRITICAL WORKFLOW PRINCIPLES

**Plan-First Dev**: Never start implementing w/o identifying plan & work item 2 ensure progress tracking & coordination.

**Systematic Debugging**: When issues arise, use 6-step scientific debugging methodology rather than trial-&-error approaches.

**Quality Gates**: Apply Four-Pillar Valid8n before marking any work item complete - no exceptions.

## Dev Workflow 🔄

### Phase 1: Plan Discovery & Work Item Selection

**Step 1: Plan Document Discovery (Priority Order)**
1. `ROADMAP.md` - Major features & multi-phase projects
2. `PROJECT_PLAN.md` - Project-specific planning docs
3. `README.md` (Roadmap section) - Project-level planning
4. `TODO.md` - Task lists & quick items
5. `.tmp/*.md` - Temporary planning docs

**Step 2: Plan Resolution**
- **Multiple plans found** → Present list, ask user which 2 follow
- **No plans found** → Ask: "No existing plan found. Would you like 2 create project plan first?"
  - If yes → Jump 2 `/axi-feature` workflow 4 comprehensive planning
  - If no → Ask user 2 describe work & create minimal specification

**Step 3: Work Item Selection**
- Parse selected plan doc 4 all work items
- Filter 4 unblocked items (no incomplete dependencies)
- Present available options: "Available work items: [list]. Which would you like 2 work on?"
- If item claimed by another session → Offer 2 take over or select different item

### Phase 2: Work Item Analysis & Test Strategy

**Step 4: Work Item Analysis**
- **Scope**: What exactly needs 2 be implemented?
- **📁 involved**: Which files will be created/modified?
- **Dependencies**: What existing code does this rely on?
- **Success criteria**: How will we know it's complete?
- **Testing approach**: Unit tests, integration tests, or both?

**Step 5: Test-First Dev Decision**
**Use TDD 4**: New funcs, API endpoints, business logic, data transformations
**Skip TDD 4**: UI styling, config changes, docs, simple file operations

**If using TDD:**
1. Write failing tests that would pass when feature is complete
2. Follow testing standards from `/axi-test`
3. Run tests 2 confirm they fail (red phase)
4. Begin impl 2 make tests pass

### Phase 3: Implementation with Quality Gates

**Step 6: Implementation Cycle**
1. **Implement** → Write code to fulfill work item requirements
2. **Test** → Run tests and observe results
3. **Debug** → If failures occur, apply 6-step debugging methodology
4. **Iterate** → Repeat until tests pass and requirements met
5. **Validate** → Apply Four-Pillar Validation before marking complete

## 6-Step Scientific Debugging Methodology

When encountering failures, test errors, or unexpected behavior:

### 1. Reproduce Systematically
- Create minimal, consistent reproduction case
- Document exact steps, inputs, and environment conditions
- Verify issue occurs repeatedly under same conditions
- Isolate variables - change one thing at a time

### 2. Gather Evidence & Context
- Collect all relevant logs, error messages, and stack traces
- Document environment details (versions, configurations, state)
- Capture exact input data and expected vs. actual outputs
- Use debugging tools to inspect runtime state

### 3. Form Scientific Hypotheses
- Generate 2-3 specific hypotheses about root cause based on evidence
- Make hypotheses testable and falsifiable
- Consider multiple potential causes, don't fixate on first guess
- Question assumptions - "What am I assuming that might be wrong?"

### 4. Test Hypotheses Methodically
- Design specific tests for each hypothesis
- Test one hypothesis at a time with controlled changes
- Document what you test and results (even negative results)
- Use scientific method - isolate variables and observe

### 5. Identify Root Cause, Not Symptoms
- Look beyond immediate symptoms to underlying system causes
- Ask "Why?" iteratively - each answer leads to deeper "why?"
- Consider component interactions, timing issues, state dependencies
- Distinguish between triggers and root causes

### 6. Fix Comprehensively & Validate
- Address root cause, not just surface symptoms
- Test fix thoroughly - solves problem without breaking other parts?
- Consider broader impact on other system components
- Update tests, documentation, error handling to prevent recurrence

## Work Item Completion Process

### Completion Validation Checklist
Before marking work item complete:
1. **Functionality** → All acceptance criteria met? ✅
2. **Testing** → Tests pass with adequate coverage? ✅
3. **Code Quality** → Follows project coding standards? ✅
4. **Documentation** → Code properly documented? ✅
5. **Integration** → Works correctly with existing codebase? ✅
6. **No Regressions** → Existing functionality still works? ✅

### Plan Status Updates
- Update plan document with work item completion
- Mark dependencies as satisfied for dependent items
- Update progress indicators and milestone tracking
- If using orchestrated plan → Release file locks, update coordination status

### Commit & Documentation
- Create meaningful commit with conventional format
- Include work item reference in commit message
- Update relevant documentation
- Note discovered issues or technical debt for future consideration

## Integration with Other Commands

### Plan Management
- Use `/axi-plan` for orchestrated multi-assistant plans
- Handle plan conflicts and coordination automatically
- Update plan status as work items complete

### Quality Assurance
- Apply `/axi-validate` standards throughout development
- Use `/axi-test` systematic approach for test creation
- Ensure Four-Pillar Validation before completion

### Feature Development
- If work item requires architectural analysis → Integrate with `/axi-feature`
- Apply integration planning for complex features
- Use codebase analysis capabilities when needed

## Advanced Features

### Context-Aware Development
- Adapt implementation approach based on project type and technologies
- Use project-specific patterns discovered through codebase analysis
- Apply appropriate testing strategies for technology stack
- Follow established architectural patterns

### Multi-Assistant Coordination
- Respect file ownership and coordination protocols when working on orchestrated plans
- Update global plan status appropriately
- Handle conflicts and blocking situations
- Communicate progress through plan document updates

### Continuous Quality Assurance
- Apply validation standards continuously, not just at completion
- Use systematic debugging for any issues encountered
- Maintain clean, readable code throughout process
- Document decisions and trade-offs made during implementation

## Success Criteria
- ✅ **Plan-driven development** with clear work item selection and tracking
- ✅ **Systematic debugging approach** when issues arise
- ✅ **Quality gates enforced** throughout development process
- ✅ **Completed work item** meeting all acceptance criteria
- ✅ **Clean, tested code** following project standards
- ✅ **Updated plan status** with accurate progress tracking
- ✅ **No technical debt** introduced without documentation
- ✅ **Professional implementation** integrating seamlessly with existing codebase

## Usage
```
/axi-implement [work_item_description]
```

**Example:**
```
/axi-implement "Add user authentication endpoints"
/axi-implement  # Will prompt for plan selection
```

Remember: The goal is professional-quality implementation that integrates seamlessly with existing projects and maintains long-term maintainability through systematic development practices.
