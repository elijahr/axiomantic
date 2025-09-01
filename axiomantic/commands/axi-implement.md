# /axi-implement - Complete Development Workflow

Execute complete development workflow with plan integration, TDD approach, and systematic debugging for: **$ARGUMENTS**

## Development Workflow Process

### Phase 1: Plan Discovery & Selection

**Step 1: Plan Document Discovery**
- Check for existing plans in order of precedence:
  1. `ROADMAP.md` - Major features and multi-phase projects
  2. `PROJECT_PLAN.md` - Project-specific planning documents
  3. `README.md` (Roadmap section) - Project-level planning
  4. `TODO.md` - Task lists and quick items
  5. `.tmp/*.md` - Temporary planning documents

**Step 2: Plan Resolution**
- If **multiple plans found**: Present list and ask user which to follow
- If **no plans found**: Ask user "No existing plan found. Would you like to create a project plan first?"
  - If yes → Jump to `/axi-feature` workflow for comprehensive planning
  - If no → Ask user to describe the work item and create a minimal work specification

**Step 3: Work Item Selection**
- Parse selected plan document
- Identify all work items with status indicators
- Filter for unblocked work items (no incomplete dependencies)
- Present available work items: "Available work items: [list]. Which would you like to work on?"
- If work item already claimed by another session → offer to take over or select different item

### Phase 2: Work Item Analysis & Test Design

**Step 4: Work Item Analysis**
- Analyze the selected work item for:
  - **Scope**: What exactly needs to be implemented?
  - **Files involved**: Which files will be created/modified?
  - **Dependencies**: What existing code does this rely on?
  - **Success criteria**: How will we know it's complete?
  - **Testing approach**: Unit tests, integration tests, or both?

**Step 5: Test-First Development (When Appropriate)**
- Determine if TDD approach makes sense:
  - ✅ **Use TDD for**: New functions, API endpoints, business logic, data transformations
  - ❌ **Skip TDD for**: UI styling, configuration changes, documentation, simple file operations
- If using TDD:
  1. Write failing tests that would pass if the feature were complete
  2. Ensure tests follow testing standards from `/axi-test`
  3. Run tests to confirm they fail (red phase)
  4. Begin implementation to make tests pass

### Phase 3: Implementation with Systematic Debugging

**Step 6: Implementation Cycle**
1. **Implement**: Write code to fulfill the work item requirements
2. **Test**: Run tests and observe results
3. **Debug**: If tests fail or bugs occur, apply 6-step debugging methodology (below)
4. **Iterate**: Repeat until tests pass and requirements met
5. **Validate**: Apply Four Pillars validation before marking complete

## 6-Step Debugging Methodology

When development encounters failures, test errors, or unexpected behavior:

### 1. **Reproduce Systematically**
- Create minimal, consistent reproduction case
- Document exact steps, inputs, and environment conditions
- Verify the issue occurs repeatedly under same conditions
- Isolate variables - change one thing at a time to identify triggers

### 2. **Gather Evidence & Context**
- Collect all relevant logs, error messages, and stack traces
- Document environment details (versions, configurations, state)
- Capture exact input data and expected vs. actual outputs
- Use debugging tools to inspect runtime state and variable values

### 3. **Form Scientific Hypotheses**
- Based on evidence, generate 2-3 specific hypotheses about root cause
- Make hypotheses testable and falsifiable ("If X is the cause, then Y should happen when I do Z")
- Consider multiple potential causes rather than fixating on first guess
- Question assumptions - "What am I assuming that might be wrong?"

### 4. **Test Hypotheses Methodically**
- Design specific tests for each hypothesis
- Test one hypothesis at a time with controlled changes
- Use scientific method - isolate variables and observe results
- Document what you test and what results you get (even negative results)

### 5. **Identify Root Cause, Not Symptoms**
- Look beyond immediate symptoms to underlying system causes
- Ask "Why?" iteratively - each answer leads to deeper "why?"
- Distinguish between triggers (what starts the problem) and root causes (why system allows it)
- Consider interactions between components, timing issues, and state dependencies

### 6. **Fix Comprehensively & Validate**
- Address the root cause, not just surface symptoms
- Test the fix thoroughly - does it solve the problem without breaking anything else?
- Consider broader impact - how does this fix affect other parts of the system?
- Update tests, documentation, and error handling as needed to prevent recurrence

## Integration with Existing Commands

### Plan Management Integration
- Use `/axi-plan` for creating orchestrated multi-assistant plans
- Automatically update plan status as work items complete
- Handle plan conflicts and coordination when multiple developers working

### Quality Assurance Integration
- Apply `/axi-validate` standards throughout development
- Use `/axi-test` systematic approach for test creation and execution
- Ensure all Four Pillars validation before work item completion

### Feature Development Integration
- If work item requires significant architectural analysis, integrate with `/axi-feature`
- Use codebase analysis capabilities when implementing complex features
- Apply integration planning for features affecting multiple components

## Work Item Completion Process

### Completion Validation
Before marking work item complete, verify:
1. **Functionality**: All acceptance criteria met
2. **Testing**: Tests pass and provide adequate coverage
3. **Code Quality**: Follows project coding standards
4. **Documentation**: Code is properly documented and commented
5. **Integration**: Works correctly with existing codebase
6. **No Regressions**: Existing functionality still works

### Plan Status Updates
- Update plan document with work item completion
- Mark dependencies as satisfied for dependent work items
- Update progress indicators and milestone tracking
- If using orchestrated plan, release file locks and update coordination status

### Commit & Documentation
- Create meaningful commit with conventional format
- Include work item reference in commit message
- Update any relevant documentation
- Note any discovered issues or technical debt for future consideration

## Advanced Features

### Context-Aware Development
- Adapt implementation approach based on project type and technologies
- Use project-specific patterns and conventions discovered through codebase analysis
- Apply appropriate testing strategies for the technology stack
- Follow established architectural patterns in the codebase

### Multi-Assistant Coordination
- When working on orchestrated plans, respect file ownership and coordination protocols
- Update global plan status appropriately
- Communicate progress through plan document updates
- Handle conflicts and blocking situations appropriately

### Continuous Quality Assurance
- Apply validation standards continuously, not just at completion
- Use systematic debugging approach for any issues encountered
- Maintain clean, readable code throughout development process
- Document decisions and trade-offs made during implementation

## Success Criteria

Successful implementation workflow achieves:
- ✅ **Completed work item** meeting all acceptance criteria
- ✅ **Clean, tested code** following project standards
- ✅ **Updated plan status** with accurate progress tracking
- ✅ **No technical debt** introduced without documentation
- ✅ **Validated integration** with existing codebase
- ✅ **Clear documentation** of implementation decisions

Remember: The goal is not just working code, but professional-quality implementation that integrates seamlessly with the existing project and maintains long-term maintainability.
