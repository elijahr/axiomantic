---
applyTo: "none"
---

# Source Code Standards & Architecture

## II. DEVELOPMENT STANDARDS

### Code Standards

#### Style and Quality

- Follow established style guides for your language
- Use consistent formatting and indentation
- Write self-documenting code with clear variable names
- Avoid magic numbers and hardcoded values

#### Performance and Maintainability

- Optimize for readability first, performance second
- Use appropriate data structures for the task
- Consider memory usage and algorithmic complexity
- Write modular, reusable code

#### Error Handling

- Handle errors gracefully with meaningful messages
- Use language-specific error handling patterns
- Don't suppress errors without good reason
- Log errors appropriately for debugging

#### Refactoring and Automation

- Before writing regex fix-up scripts: Test patterns on sample text first, use specific non-greedy patterns, and avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve original content, and validate syntax before running on all files.

##### Comment Cleanup Process

**When user requests to clean up comments in the project:**

1. **Extract All Comments**: Write a shell command that will find all comments and docstrings in the project (exclude .venv or other such package directories) and write the comments to a file, including the file and line number.

2. **Analyze Each Comment**: Go over each comment and determine if it does any of the following:

   - **Explains a change to the code** - More of a CHANGELOG type of comment within the code
   - **Makes reference to Phases** of some implementation plan
   - **States the obvious** - If the code below it or next to it is readable and self-explanatory, we don't need the comment

3. **Document Violations**: Create a document in `.tmp/` detailing all of those violations

4. **Confirm with User**: Present the analysis and get approval before making changes

5. **Execute Cleanup**: Start deleting the bad comments in batches

#### Language-Specific Patterns

- Use idiomatic constructs for your language
- Leverage language features appropriately
- Follow established conventions
- Use static analysis tools when available

### Architecture Design

#### System Design Principles

- Design for maintainability and extensibility
- Use appropriate design patterns
- Consider scalability requirements
- Plan for failure scenarios

#### Component Relationships

- Define clear interfaces between components
- Minimize coupling between modules
- Use dependency injection where appropriate
- Document component interactions

#### Planning & Implementation

- Break down complex problems, consider non-functional requirements
- Plan for testing and validation, document architectural decisions

**CRITICAL Planning Process - When creating plans, roadmaps, or implementation strategies:**

1. **Step Back & Survey**: Read relevant project files, understand current architecture, identify affected components, note constraints
2. **Internal Dialogue**: "What's the real problem?" "Different approaches?" "Risks/trade-offs?" "System interactions?" "What could go wrong?"
3. **Context-Informed Planning**: Reflect current codebase patterns, existing infrastructure, team practices, realistic scope, **all four validation pillars**
4. **Plan Validation**: Review against actual codebase, check assumptions, ensure actionable/specific, consider alternatives, verify validation checkpoints

_5-minute planning conversation saves hours of wrong-direction implementation._

#### Best Practices

- Follow established architectural patterns
- Consider performance implications
- Plan for monitoring and observability
- Design for security from the start

### Debugging Methodology

#### Systematic Approach

- Reproduce the issue consistently
- Isolate the problem area
- Form hypotheses about the cause
- Test hypotheses systematically

#### Data Collection

- Gather relevant logs and error messages
- Document the environment and conditions
- Create minimal test cases
- Use debugging tools effectively

#### Root Cause Analysis

- Look beyond symptoms to underlying causes
- Consider multiple potential causes
- Use scientific method for investigation
- Document findings for future reference

#### Problem Resolution

- Fix the root cause, not just symptoms
- Test the fix thoroughly
- Consider impact on other parts of the system
- Update documentation and tests as needed

---

## III. PROJECT MANAGEMENT

### Self-Validation Standards

#### After Every Major Implementation Step

**MANDATORY**: After completing any significant code change, implementation, or milestone, you MUST step back and validate your work against these four pillars:

##### 1. Coding Standards Validation

Ask yourself and verify:

- **Style Consistency**: Does this code follow the established style guide and project conventions?
- **Code Quality**: Is this code readable, maintainable, and following best practices?
- **Error Handling**: Are errors handled appropriately with meaningful messages?
- **Performance**: Are there any obvious performance issues or inefficiencies?
- **Security**: Have I introduced any security vulnerabilities or exposed sensitive data?

##### 2. Documentation Completeness Validation

Ask yourself and verify:

- **API Documentation**: Are all public functions/classes/methods documented?
- **Usage Examples**: Have I provided clear examples of how to use this code?
- **README Updates**: Does the README still accurately reflect the current state?
- **Inline Comments**: Are complex algorithms or business logic explained?
- **Architecture Documentation**: Are any architectural changes documented?

##### 3. Project Pattern Consistency Validation

Ask yourself and verify:

- **Existing Patterns**: Does this implementation follow existing project patterns?
- **File Organization**: Are files organized according to project structure conventions?
- **Naming Conventions**: Do variable, function, and file names match project standards?
- **Import Patterns**: Are imports organized consistently with the rest of the project?
- **Configuration Management**: Is configuration handled consistently with existing patterns?

##### 4. Testing Completeness Validation

Ask yourself and verify:

- **Unit Tests**: Are there unit tests covering the core functionality?
- **Integration Tests**: If this connects multiple components, are there integration tests?
- **Edge Cases**: Are error conditions and edge cases tested?
- **Test Coverage**: Is the test coverage adequate for this functionality?
- **Test Quality**: Are tests clear, maintainable, and actually testing the right things?

#### Self-Validation Process

**For each validation pillar:**

1. **Review the code** against the specific criteria
2. **Identify gaps or issues** - be brutally honest
3. **Fix immediately** - don't postpone validation fixes
4. **Document validation** - briefly note what you checked and confirmed

**Example Self-Validation Comment:**

```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows project style, proper error handling
# ✅ Documentation: Docstrings added, README updated
# ✅ Project Patterns: Consistent with existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

#### When to Validate

- After implementing a new feature or component
- After refactoring existing code
- After fixing a bug (ensure fix doesn't break standards)
- Before committing significant changes
- At the completion of plan milestones

### Planning Standards

#### Mandatory Planning Documentation

**CRITICAL**: All non-trivial work must be planned and documented BEFORE implementation begins.

##### Planning Hierarchy (in order of preference):

1. **ROADMAP.md** - For major features, significant refactoring, or multi-phase projects
2. **README.md (Roadmap Section)** - For project-level planning and feature roadmaps
3. **Temporary Plan Files** - For all other planning needs

##### Temporary Plan File Standards

**For all planning that doesn't belong in ROADMAP.md or README.md:**

1. **Create .tmp directory** in project root if it doesn't exist
2. **Ensure .tmp is in .gitignore** to avoid committing temporary files
3. **Use descriptive filenames**: `.tmp/feature-auth-system-plan.md`, `.tmp/refactor-database-plan.md`
4. **Clean up** completed plan files periodically

**Example .gitignore entry:**

```gitignore
.tmp/
*.tmp
```

##### Plan Content Requirements

**Plan Template**:

```markdown
# [Feature/Task] Implementation Plan

## Overview

[Brief description of what/why]

## Validation Integration

- [ ] Standards: [specific standards] - [ ] Docs: [what needs creation/update]
- [ ] Patterns: [existing/new patterns] - [ ] Testing: [strategy/coverage]

## Phases

- [ ] Phase 1: Planning/Setup (Validate all pillars in plan)
- [ ] Phase 2: Core Implementation (Validate all pillars in impl)
- [ ] Phase 3: Integration/Testing (Final validation before completion)

## Success Criteria & Risks

[Functionality works, passes four pillars, tests pass, docs complete | Risk mitigation]
```

**Planning Process**:

- **Complexity**: Simple (<1hr) = inline validation; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md/README.md
- **Consider four pillars**: Standards, docs, patterns, testing strategy upfront
- **Break into validatable chunks**: Small phases, validation checkpoints, plan for validation time
- **Maintain**: Update as work progresses, mark completed phases, note validation results, cleanup when complete

### Plan-Aware Operation

#### Plan Discovery & Selection

- **Multiple plans found?** Ask user: "I found [X] plan files: [list]. Which should I follow, or would you prefer to work without a plan?"
- **Plan hierarchy:** ROADMAP.md > PROJECT*PLAN.md > README roadmap > TODO.md > other \_PLAN*.md files
- **Auto-select** only if there's clearly one active plan file

#### User Intent Management

Always respect these user signals:

- **"No plan"** / **"ignore plans"** / **"freeform work"** → Set plan status: DISABLED
- **"Pause plan"** / **"park the roadmap"** / **"take a break from plan"** → Set plan status: PAUSED
- **"Resume plan"** / **"back to roadmap"** / **"continue where we left off"** → Set plan status: ACTIVE
- **"Switch to [plan]"** → Change active plan
- **"Done with plan"** / **"plan complete"** → Set plan status: COMPLETED

#### Plan Updates and Modifications

**When updating existing plans or creating new ones:**

1. **Re-examine Reality**: Before making plan changes:

   - Re-read the current plan file completely
   - Survey what has actually been implemented since last update
   - Check what assumptions have changed
   - Look for new constraints or requirements

2. **Honest Progress Assessment**:

   - Mark completed items as truly done (not just "started")
   - Identify partially completed work and its current state
   - Note any blocked or problematic items

3. **Context-Aware Updates**:
   - Ensure new plan items fit with existing codebase patterns
   - Consider impact on other planned work
   - Update dependencies and prerequisites
   - Adjust timelines based on actual progress rates

#### Plan Status Tracking

Maintain plan status in responses:

```markdown
📋 Plan Status: ACTIVE (ROADMAP.md - Phase 3/5)
📋 Plan Status: PAUSED (PROJECT_PLAN.md - will resume later)
📋 Plan Status: DISABLED (working without plan)
📋 Plan Status: COMPLETED (ROADMAP.md - all phases done!)
```

#### Behavior by Status

- **ACTIVE:** Reference plan in every response, update progress, suggest next steps
- **PAUSED:** Mention plan exists but don't auto-reference. Check occasionally: "Ready to resume [plan]?"
- **DISABLED:** Work normally, don't mention plans unless user asks
- **COMPLETED:** Congratulate, offer to archive or create new plan

#### Context Switching

- **During plan work:** "This will diverge from the current plan. Pause plan, or should I incorporate this into the roadmap?"
- **After diversion:** "Ready to return to [paused plan] where we left off?"
- **Mixed work:** Allow plan + ad-hoc work, but clearly distinguish which is which

#### Plan File Management

- **Update immediately** when plan status changes
- **Add status indicators** to plan files when helpful
- **Preserve plan state** across sessions by updating file content
- **Archive completed plans** by adding completion date/status

#### Session State Management

To maintain plan context across conversations:

- **Create `.tmp/plan_state.md`** in workspace root when plan status changes
- **Format:**

  ```markdown
  # Plan State

  Status: ACTIVE|PAUSED|DISABLED|COMPLETED
  Active Plan: ROADMAP.md
  Last Updated: 2024-12-XX
  Current Position: Phase 3, Task 2
  User Intent: [continue after bug fix diversion]

  ## Status History

  - 2024-12-XX: ACTIVE (started Phase 3)
  - 2024-12-XX: PAUSED (debugging session)
  ```

- **Read `.tmp/plan_state.md` first** to restore context in new conversations
- **Update after significant plan events** (completion, status change, position change)

#### Cross-Session Continuity

- **On conversation start:** Check for `.tmp/plan_state.md` and restore plan context
- **Status indicators in plan files:** Add `🔄 ACTIVE`, `⏸️ PAUSED`, `✅ COMPLETED` to plan headers
- **Progress markers:** Update completion percentages in plan files
- **Context breadcrumbs:** Leave notes like `<!-- Last: completed Phase 2, starting Phase 3 -->`

#### Progress Tracking & Plan Management

**CRITICAL**: When working with ROADMAP files, README roadmap sections, or PLAN documents:

1. **Auto-update completion status** after each task without user prompting
2. **Mark items as completed** using standard markdown: `- [x] Completed task`
3. **Update progress indicators** (percentages, phase markers, etc.)
4. **Add completion timestamps** when helpful for tracking
5. **Maintain plan visibility** by referencing current status in responses

**Self-Reminder Mechanisms:**

- **Always check for plan files** at start of each session: `ROADMAP.md`, `README.md` (roadmap section), `*PLAN*.md`, `TODO.md`
- **Reference current plan item** in your responses: "Working on Step 3 of 5: [task description]"
- **Proactively mention next steps**: "Completed X. Next: Y (Step 4 of 5)"
- **Update plan immediately** after completing any implementation task
- **Show progress context**: "Phase 2/3 complete: ✅ Setup ✅ Implementation ⏳ Testing"

**Example Plan Update Pattern:**

```markdown
# Project Roadmap

- [x] ~~Phase 1: Initial setup~~ ✅ (Completed: 2025-08-05)
- [x] ~~Phase 2: Core implementation~~ ✅ (Completed: 2025-08-05)
- [ ] Phase 3: Testing and validation ⏳ (In Progress)
- [ ] Phase 4: Documentation
- [ ] Phase 5: Deployment

Progress: 40% complete (2/5 phases)
```

### Plan Creation Guidance

For substantial tasks with multiple phases, prompt user:
"This looks like a substantial task with multiple phases. Would you like me to create a project plan/roadmap first to track our progress? This helps ensure we don't miss steps and makes it easier to resume work later."

Use the plan template format defined above in Planning Standards.

### Milestone & Commit Management

**After completing significant milestones or plan phases:**

- **Self-validate first**: Complete all four validation pillars before considering milestone complete
- **Prompt user to commit changes:** "This completes [milestone/phase]. All validation pillars checked. Would you like to commit these changes before continuing?"
- **Suggest meaningful commit messages** based on what was accomplished
- **Break large changes into logical commits** when working through multi-step plans
- **Use conventional commit format:** `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"

#### Commit Message Templates

**For validated milestones:**

```
feat: implement user authentication system

- Add JWT token generation and validation
- Create user login/logout endpoints
- Add password hashing with bcrypt
- Include comprehensive unit tests (95% coverage)

Validated: coding standards, documentation, project patterns, testing
```

**For validation fixes:**

```
refactor: improve code standards compliance

- Fix inconsistent naming conventions
- Add missing error handling
- Update documentation for clarity
- Ensure test coverage for edge cases

Self-validation: all four pillars verified
```
