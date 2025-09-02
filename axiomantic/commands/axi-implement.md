# /axi-implement - Complete Development Workflow

Execute complete development workflow with plan integration, TDD approach, and systematic debugging for: **$ARGUMENTS**

> **💡 Best Results**: Always discover and analyze existing plans before starting implementation to ensure coordinated development.

## 🚨 CRITICAL WORKFLOW PRINCIPLES

**Plan-First Development**: Never start implementing without identifying the plan and work item to ensure progress tracking and coordination.

**Systematic Debugging**: When issues arise, use the 6-step scientific debugging methodology rather than trial-and-error approaches.

**Quality Gates**: Apply Five-Pillar Validation before marking any work item complete - no exceptions.

**Plan Detail Requirements**: Only work with plans that contain extensive implementation details, code examples, and specific success criteria. If plan is generic or lacks detail, enhance it before proceeding with implementation.

## Plan Quality Standards

### Required Detail Level for Implementation:
1. **Specific Implementation Details**: Every work item must include concrete implementation approaches, not generic descriptions
2. **Code Examples**: Relevant code snippets, configuration examples, API usage patterns for each work item
3. **Technical Specifications**: Detailed file structures, module interfaces, data flow documentation
4. **Measurable Success Criteria**: Specific acceptance criteria with validation procedures and test requirements
5. **Testing Requirements**: Exact test cases, coverage expectations, validation approaches
6. **Architecture Documentation**: Clear technical specifications for implementation approach

### Implementation Readiness Checklist:
- ✅ Work item has specific, actionable implementation details (not generic descriptions)
- ✅ Code examples provided for key implementation aspects
- ✅ Success criteria are measurable with clear validation procedures
- ✅ Technical specifications include file structures and integration points
- ✅ Testing requirements specified with coverage expectations
- ✅ Dependencies and prerequisites clearly documented with technical details

**If Plan Does Not Meet Standards**: Stop implementation and enhance plan using axi-plan detail enhancement process.

## Development Workflow Process

### Phase 1: Plan Discovery & Work Item Selection

**Step 1: Plan Document Discovery (Priority Order)**
1. `ROADMAP.md` - Major features and multi-phase projects
2. `PROJECT_PLAN.md` - Project-specific planning documents
3. `README.md` (Roadmap section) - Project-level planning
4. `TODO.md` - Task lists and quick items
5. `.tmp/*.md` - Temporary planning documents

**Step 2: Plan Resolution & Quality Assessment**
- **Multiple plans found** → Present list, ask user which to follow
- **No plans found** → Ask: "No existing plan found. Would you like to create a project plan first?"
  - If yes → Jump to `/axi-feature` workflow for comprehensive planning
  - If no → Ask user to describe work and create minimal specification
- **Plan found but lacks detail** → CRITICAL: Assess plan quality before proceeding:

**Plan Quality Assessment:**
1. **Detail Level Check**: Does plan contain specific implementation details and code examples?
2. **Success Criteria Check**: Are there measurable acceptance criteria with validation procedures?
3. **Technical Specificity Check**: Are architectural details, file structures, API specifications present?
4. **Generic Content Detection**: Are descriptions vague or actionable and specific?

**If Plan is Inadequate (Generic/Lacks Detail):**
- **MANDATORY**: Jump to enhanced planning mode before implementation
- Use `/axi-plan` enhancement process to transform generic plan into detailed implementation guide
- Add extensive technical details, code examples, specific success criteria
- Research codebase patterns and add specific implementation guidance
- Define measurable acceptance criteria with validation procedures
- **Only proceed with implementation after plan meets detail requirements**

**Plan Enhancement Requirements:**
- Every work item must have specific implementation details with code examples
- Clear success criteria with measurable acceptance tests
- Technical specifications including file structures, API usage, configuration details
- Testing requirements with specific test cases and coverage expectations
- No generic descriptions - everything must be actionable and specific

**Step 3: Work Item Selection (From Detailed Plan)**
- **PREREQUISITE**: Plan must contain detailed implementation specifics (verified in Step 2)
- Parse detailed plan document for all work items with implementation details
- Filter for unblocked items (no incomplete dependencies)
- Verify work items contain:
  - Specific implementation details and code examples
  - Clear success criteria with validation procedures
  - Technical specifications (file structures, API details, configurations)
  - Testing requirements with specific test cases
- Present available detailed options: "Available detailed work items: [list]. Which would you like to work on?"
- If item claimed by another session → Offer to take over or select different item
- **If selected work item lacks detail** → Enhance work item detail before claiming (research implementation specifics, add code examples, define success criteria)

**Step 3.5: Document Locking & Ownership Claiming**
- **CRITICAL**: Follow document locking procedures from `/axi-plan` before proceeding
- **Lock Acquisition**: Check if plan document is locked by another session
  - If locked → Wait 30 seconds and retry up to 3 times
  - Create `.lock` file with session ID + timestamp + operation
- **Refresh & Verify**: Re-read plan to ensure you have latest version
- **Ownership Check**: Verify work item is still unowned in refreshed document
  - If unowned → Add ownership info: `**Owner**: [session_id] 🚀 **CLAIMED**`
  - If already claimed → Select different work item & confirm with user
- **MANDATORY**: Update plan document with ownership info BEFORE starting any implementation work
- **Lock Release**: Delete lock file immediately after ownership update

### Phase 2: Work Item Analysis & Validation Planning

**Step 4: Work Item Analysis (Enhanced Detail Verification)**
- **Scope**: What exactly needs to be implemented? (Must be specific, not generic)
- **Implementation Details**: Are there specific code examples, API calls, configuration requirements?
- **Files involved**: Which specific files will be created/modified with detailed modification plans?
- **Dependencies**: What existing code does this rely on with specific integration points?
- **Success criteria**: Are there measurable acceptance criteria with validation procedures?
- **Testing approach**: Specific test cases, coverage requirements, validation methods?
- **Architecture Details**: File structures, module interactions, data flows documented?

**If Work Item Lacks Sufficient Detail:**
1. **Research Phase**: Analyze codebase for existing patterns and implementation approaches
2. **Detail Enhancement**: Add specific implementation guidance with code examples
3. **Success Criteria Definition**: Establish measurable acceptance criteria with validation steps
4. **Testing Specification**: Define specific test cases and coverage requirements
5. **Update Plan**: Document enhanced details in plan for future reference

**Step 5: Proactive Validation Planning**
**Five-Pillar Pre-Planning:**
1. **Coding Standards**: Survey existing code patterns, naming conventions, error handling
2. **Documentation**: Plan docstrings, comments, README updates during implementation
3. **Project Patterns**: Identify existing patterns to follow (imports, file structure, etc.)
4. **Testing**: Design test strategy that achieves meaningful coverage and validation
5. **Instruction Quality**: If modifying commands/agents, follow process-oriented standards

**Active Rules Integration:**
- Load and apply user overrides (`.axiomantic/user-overrides.md`)
- Load and apply project overrides (`.axiomantic/project-overrides.md`)
- Note any rule conflicts and resolve according to precedence (User > Project > Base)
- Plan implementation approach that follows active rule set

**Step 6: Test-First Development Decision**
**Use TDD for**: New functions, API endpoints, business logic, data transformations
**Skip TDD for**: UI styling, configuration changes, documentation, simple file operations

**If using TDD:**
1. Write failing tests that would pass when feature is complete
2. Follow testing standards from `/axi-test` and active rules
3. Run tests to confirm they fail (red phase)
4. Begin implementation to make tests pass

### Phase 3: Implementation with Continuous Validation

**Step 7: Implementation Cycle**
1. **Pre-Implementation**: Review active rules and validation criteria before coding
2. **Implement**: Write code following identified patterns and active rules
3. **Continuous Validation**: Apply Five-Pillar checks during development, not after
4. **Test**: Run tests and observe results with meaningful assertions
5. **Debug**: If failures occur, apply 6-step debugging methodology
6. **Iterate**: Repeat until tests pass and requirements met
7. **Final Validation**: Confirm Five-Pillar compliance before marking complete

**Continuous Five-Pillar Application:**
- **During Coding**: Follow discovered patterns, apply naming conventions, handle errors consistently
- **During Documentation**: Write docstrings and comments that match project style
- **During Testing**: Create tests that validate behavior meaningfully and achieve coverage goals
- **Before Commits**: Self-validate against all five pillars to catch issues early

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

### Work Item Completion Protocol
**Document Locking & Updates:**
- **CRITICAL**: Follow document locking procedures from `/axi-plan` before modifying plan document
- **Lock Acquisition**: Check if plan document is locked by another session
  - If locked → Wait 30 seconds and retry up to 3 times
  - Create `.lock` file with session ID + timestamp + operation
- **Refresh Document**: Re-read plan to ensure no conflicts with other sessions

**Completion Status Update:**
- Move work item from active section to completed section
- Create short summary of changes made (1-2 sentences)
- Remove ownership info (session ID, timestamps) - no longer relevant
- **PRESERVE**: Phase/track number info for dependency references
- Mark dependencies as satisfied for dependent items
- Update progress indicators and milestone tracking

**File Lock Release:**
- Delete lock file immediately after completion updates
- Update coordination status if using orchestrated plan
- Ensure clean handoff for dependent work items

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
- Ensure Five-Pillar Validation before completion

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

#### Session Management
- Generate unique session ID for implementation work: `IMPL_[YYYYMMDD]_[HHMM]_[4-char-hash]`
- Include session ID in all file modifications and commit messages
- Track active sessions to prevent conflicts with concurrent implementations
- Maintain session logs for coordination and debugging purposes

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
