---
applyTo: "none"
---

# Source Code Standards & Architecture

## II. DEV STANDARDS

### Code Standards

#### Style & Quality

- Follow established style guides for your lang
- Use consistent formatting & indentation
- Write self-documenting code w/ clear var names
- Avoid magic numbers & hardcoded values

#### Performance & Maintainability

- Optimize for readability first, performance second
- Use appropriate data structures for task
- Consider memory usage & algorithmic complexity
- Write modular, reusable code

#### Error Handling

- Handle errors gracefully w/ meaningful messages
- Use lang-specific error handling patterns
- Don't suppress errors w/o good reason
- Log errors appropriately for debugging

#### Refactoring & Automation

- Before writing regex fix-up scripts: Test patterns on sample text first, use specific non-greedy patterns, avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve original content, validate syntax before running on all files.

##### Comment Cleanup 🔄

**When user requests to clean up comments in proj:**

1. **Extract All Comments**: Write shell cmd that finds all comments & docstrings in proj (exclude .venv | other package dirs) & write comments to file, including file & line number.

2. **Analyze Each Comment**: Go over each comment & determine if it does any of following:

   - **Explains change to code** - More of CHANGELOG type comment within code
   - **Makes reference to Phases** of some impl plan
   - **States obvious** - If code below | next to it is readable & self-explanatory, we don't need comment

3. **Doc Violations**: Create doc in `.tmp/` detailing all violations

4. **Confirm w/ User**: Present analysis & get approval before making changes

5. **Execute Cleanup**: Start deleting bad comments in batches

#### Lang-Specific Patterns

- Use idiomatic constructs for your lang
- Leverage lang features appropriately
- Follow established conventions
- Use static analysis tools when available

### Architecture Design

#### System Design Principles

- Design for maintainability & extensibility
- Use appropriate design patterns
- Consider scalability req
- Plan for failure scenarios

#### Component Relationships

- Define clear interfaces between components
- Minimize coupling between modules
- Use dependency injection where appropriate
- Doc component interactions

#### Planning & Impl

- Break down complex problems into smaller parts
- Consider non-functional req
- Plan for testing & validation
- Doc architectural decisions

#### Deliberate Planning 🔄

**CRITICAL: When creating plans, roadmaps, | impl strategies, you MUST:**

1. **Step Back & Survey**: Before writing any plan, pause & conduct thorough examination:

   - Read through relevant proj files & code
   - Understand current architecture & patterns
   - Identify existing components that might be affected
   - Note any constraints | dependencies

2. **Internal Dialogue**: Have explicit conversation w/ yourself about:

   - "What is real problem we're solving?"
   - "What are different approaches we could take?"
   - "What are risks & trade-offs of each approach?"
   - "What parts of existing system will this interact w/?"
   - "What could go wrong & how would we handle it?"

3. **Context-Informed Planning**: Your plan should reflect:

   - Current codebase patterns & conventions
   - Existing infrastructure & tooling
   - Team practices & proj constraints
   - Realistic scope & timeline considerations
   - **All four validation pillars** (Standards, Docs, Patterns, Testing)

4. **Plan Validation**: Before presenting plan:
   - Review it against actual codebase one more time
   - Check if you're making unrealistic assumptions
   - Ensure plan is actionable & specific
   - Consider alternative approaches you might have missed
   - **Verify validation checkpoints are included throughout**

**Remember**: 5-minute planning conversation w/ yourself can save hours of wrong-direction impl.

#### Best Practices

- Follow established architectural patterns
- Consider performance implications
- Plan for monitoring & observability
- Design for security from start

### Debugging Methodology

#### Systematic Approach

- Reproduce issue consistently
- Isolate problem area
- Form hypotheses about cause
- Test hypotheses systematically

#### Data Collection

- Gather relevant logs & error messages
- Doc environment & conditions
- Create minimal test cases
- Use debugging tools effectively

#### Root Cause Analysis

- Look beyond symptoms to underlying causes
- Consider multiple potential causes
- Use scientific method for investigation
- Doc findings for future reference

#### Problem Resolution

- Fix root cause, not just symptoms
- Test fix thoroughly
- Consider impact on other parts of system
- Update docs & tests as needed

---

## III. PROJ MGMT

### Self-Validation Standards

#### After Every Major Impl Step

**MANDATORY**: After completing any significant code change, impl, | milestone, you MUST step back & validate your work against these four pillars:

##### 1. Coding Standards Validation

Ask yourself & verify:

- **Style Consistency**: Does this code follow established style guide & proj conventions?
- **Code Quality**: Is this code readable, maintainable, & following best practices?
- **Error Handling**: Are errors handled appropriately w/ meaningful messages?
- **Performance**: Are there any obvious performance issues | inefficiencies?
- **Security**: Have I introduced any security vulnerabilities | exposed sensitive data?

##### 2. Docs Completeness Validation

Ask yourself & verify:

- **API Docs**: Are all public funcs/classes/methods documented?
- **Usage Examples**: Have I provided clear examples of how to use this code?
- **README Updates**: Does README still accurately reflect current state?
- **Inline Comments**: Are complex algorithms | business logic explained?
- **Architecture Docs**: Are any architectural changes documented?

##### 3. Proj Pattern Consistency Validation

Ask yourself & verify:

- **Existing Patterns**: Does this impl follow existing proj patterns?
- **File Org**: Are files organized according to proj structure conventions?
- **Naming Conventions**: Do var, func, & file names match proj standards?
- **Import Patterns**: Are imports organized consistently w/ rest of proj?
- **Config Mgmt**: Is config handled consistently w/ existing patterns?

##### 4. Testing Completeness Validation

Ask yourself & verify:

- **Unit Tests**: Are there unit tests covering core functionality?
- **Integration Tests**: If this connects multiple components, are there integration tests?
- **Edge Cases**: Are error conditions & edge cases tested?
- **Test Coverage**: Is test coverage adequate for this functionality?
- **Test Quality**: Are tests clear, maintainable, & actually testing right things?

#### Self-Validation 🔄

**For each validation pillar:**

1. **Review code** against specific criteria
2. **Identify gaps | issues** - be brutally honest
3. **Fix immediately** - don't postpone validation fixes
4. **Doc validation** - briefly note what you checked & confirmed

**Example Self-Validation Comment:**

```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows proj style, proper error handling
# ✅ Docs: Docstrings added, README updated
# ✅ Proj Patterns: Consistent w/ existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

#### When to Validate

- After implementing new feature | component
- After refactoring existing code
- After fixing bug (ensure fix doesn't break standards)
- Before committing significant changes
- At completion of plan milestones

### Planning Standards

#### Mandatory Planning 📝

**CRITICAL**: All non-trivial work must be planned & documented BEFORE impl begins.

##### Planning Hierarchy (in order of preference):

1. **ROADMAP.md** - For major features, significant refactoring, | multi-phase proj
2. **README.md (Roadmap Section)** - For proj-level planning & feature roadmaps
3. **Temporary Plan Files** - For all other planning needs

##### Temporary Plan File Standards

**For all planning that doesn't belong in ROADMAP.md | README.md:**

1. **Create .tmp dir** in proj root if !exist
2. **Ensure .tmp is in .gitignore** to avoid committing temp files
3. **Use descriptive filenames**: `.tmp/feature-auth-system-plan.md`, `.tmp/refactor-database-plan.md`
4. **Clean up** completed plan files periodically

**Example .gitignore entry:**

```gitignore
.tmp/
*.tmp
```

##### Plan Content Req

**Every plan doc MUST include:**

```markdown
# [Feature/Task] Impl Plan

## Overview

[Brief description of what we're building/changing & why]

## Validation Standards Integration

- [ ] Coding Standards: [specific standards to follow]
- [ ] Docs: [what docs needs to be created/updated]
- [ ] Proj Patterns: [existing patterns to follow | new patterns being established]
- [ ] Testing: [testing strategy & coverage req]

## Impl Phases

- [ ] Phase 1: Planning & Setup
  - [ ] Validate: Standards, Docs, Patterns, Testing plan
- [ ] Phase 2: Core Impl
  - [ ] Validate: Standards, Docs, Patterns, Testing impl
- [ ] Phase 3: Integration & Testing
  - [ ] Validate: All four pillars before completion
- [ ] Phase 4: Docs & Cleanup
  - [ ] Final validation across all pillars

## Success Criteria

- [ ] Functionality works as specified
- [ ] Passes all four validation pillars
- [ ] Integration tests pass
- [ ] Docs is complete & accurate

## Risks & Mitigation

[Identify potential issues & how to handle them]
```

##### Planning 🔄 Req

**Before starting any significant work:**

1. **Assess Complexity**:

   - Simple task (< 1 hour): Proceed w/ inline validation
   - Medium task (1-4 hours): Create .tmp plan file
   - Complex task (> 4 hours): Use ROADMAP.md | README.md

2. **Consider All Four Validation Pillars** in planning phase:

   - What coding standards will apply?
   - What docs will be needed?
   - What existing patterns should be followed?
   - What testing strategy is required?

3. **Break Down Work** into validatable chunks:

   - Each phase should be small enough to validate thoroughly
   - Each milestone should include validation checkpoints
   - Plan for validation time (don't underestimate)

4. **Doc Validation Strategy** upfront:
   - Specify which standards apply
   - Identify relevant proj patterns
   - Define testing req
   - Plan docs updates

#### Plan Maintenance

- **Update plans** as work progresses & req change
- **Mark completed phases** w/ checkboxes & timestamps
- **Note validation results** for each completed phase
- **Archive | cleanup** temp plans when work is complete
- **Learn from plans** - what validation strategies worked best?

### Plan-Aware Operation

#### Plan Discovery & Selection

- **Multiple plans found?** Ask user: "I found [X] plan files: [list]. Which should I follow, | would you prefer to work w/o plan?"
- **Plan hierarchy:** ROADMAP.md > PROJECT*PLAN.md > README roadmap > TODO.md > other \_PLAN*.md files
- **Auto-select** only if there's clearly one active plan file

#### User Intent Mgmt

Always respect these user signals:

- **"No plan"** / **"ignore plans"** / **"freeform work"** → Set plan status: DISABLED
- **"Pause plan"** / **"park roadmap"** / **"take break from plan"** → Set plan status: PAUSED
- **"Resume plan"** / **"back to roadmap"** / **"continue where we left off"** → Set plan status: ACTIVE
- **"Switch to [plan]"** → Change active plan
- **"Done w/ plan"** / **"plan complete"** → Set plan status: COMPLETED

#### Plan Updates & Modifications

**When updating existing plans | creating new ones:**

1. **Re-examine Reality**: Before making plan changes:

   - Re-read current plan file completely
   - Survey what has actually been implemented since last update
   - Check what assumptions have changed
   - Look for new constraints | req

2. **Honest Progress Assessment**:

   - Mark completed items as truly done (not just "started")
   - Identify partially completed work & its current state
   - Note any blocked | problematic items

3. **Context-Aware Updates**:
   - Ensure new plan items fit w/ existing codebase patterns
   - Consider impact on other planned work
   - Update dependencies & prerequisites
   - Adjust timelines based on actual progress rates

#### Plan Status Tracking

Maintain plan status in responses:

```markdown
📋 Plan Status: ACTIVE (ROADMAP.md - Phase 3/5)
📋 Plan Status: PAUSED (PROJECT_PLAN.md - will resume later)
📋 Plan Status: DISABLED (working w/o plan)
📋 Plan Status: COMPLETED (ROADMAP.md - all phases done!)
```

#### Behavior by Status

- **ACTIVE:** Reference plan in every response, update progress, suggest next steps
- **PAUSED:** Mention plan exists but don't auto-reference. Check occasionally: "Ready to resume [plan]?"
- **DISABLED:** Work normally, don't mention plans unless user asks
- **COMPLETED:** Congratulate, offer to archive | create new plan

#### Context Switching

- **During plan work:** "This will diverge from current plan. Pause plan, | should I incorporate this into roadmap?"
- **After diversion:** "Ready to return to [paused plan] where we left off?"
- **Mixed work:** Allow plan + ad-hoc work, but clearly distinguish which is which

#### Plan File Mgmt

- **Update immediately** when plan status changes
- **Add status indicators** to plan files when helpful
- **Preserve plan state** across sessions by updating file content
- **Archive completed plans** by adding completion date/status

#### Session State Mgmt

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

- **On conversation start:** Check for `.tmp/plan_state.md` & restore plan context
- **Status indicators in plan files:** Add `🔄 ACTIVE`, `⏸️ PAUSED`, `✅ COMPLETED` to plan headers
- **Progress markers:** Update completion percentages in plan files
- **Context breadcrumbs:** Leave notes like `<!-- Last: completed Phase 2, starting Phase 3 -->`

#### Progress Tracking & Plan Mgmt

**CRITICAL**: When working w/ ROADMAP files, README roadmap sections, | PLAN docs:

1. **Auto-update completion status** after each task w/o user prompting
2. **Mark items as completed** using std markdown: `- [x] Completed task`
3. **Update progress indicators** (percentages, phase markers, etc.)
4. **Add completion timestamps** when helpful for tracking
5. **Maintain plan visibility** by referencing current status in responses

**Self-Reminder Mechanisms:**

- **Always check for plan files** at start of each session: `ROADMAP.md`, `README.md` (roadmap section), `*PLAN*.md`, `TODO.md`
- **Reference current plan item** in your responses: "Working on Step 3 of 5: [task description]"
- **Proactively mention next steps**: "Completed X. Next: Y (Step 4 of 5)"
- **Update plan immediately** after completing any impl task
- **Show progress context**: "Phase 2/3 complete: ✅ Setup ✅ Impl ⏳ Testing"

**Example Plan Update Pattern:**

```markdown
# Proj Roadmap

- [x] ~~Phase 1: Initial setup~~ ✅ (Completed: 2025-08-05)
- [x] ~~Phase 2: Core impl~~ ✅ (Completed: 2025-08-05)
- [ ] Phase 3: Testing & validation ⏳ (In Progress)
- [ ] Phase 4: Docs
- [ ] Phase 5: Deployment

Progress: 40% complete (2/5 phases)
```

### Plan Creation Guidance

For substantial tasks w/ multiple phases, prompt user:
"This looks like substantial task w/ multiple phases. Would you like me to create proj plan/roadmap first to track our progress? This helps ensure we don't miss steps & makes it easier to resume work later."

**Plan Creation Template:**

```markdown
# [Proj/Feature] Impl Plan

## Overview

[Brief description of overall 🎯]

## Phases

- [ ] Phase 1: [Planning/Setup]
- [ ] Phase 2: [Core Impl]
- [ ] Phase 3: [Testing/Validation]
- [ ] Phase 4: [Docs]
- [ ] Phase 5: [Deployment/Integration]

## Current Status

Status: ACTIVE
Progress: 0% complete (0/5 phases)
```

### Milestone & Commit Mgmt

**After completing significant milestones | plan phases:**

- **Self-validate first**: Complete all four validation pillars before considering milestone complete
- **Prompt user to commit changes:** "This completes [milestone/phase]. All validation pillars checked. Would you like to commit these changes before continuing?"
- **Suggest meaningful commit messages** based on what was accomplished
- **Break large changes into logical commits** when working through multi-step plans
- **Use conventional commit format:** `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"

#### Commit Message Templates

**For validated milestones:**

```
feat: impl user auth system

- Add JWT token generation & validation
- Create user login/logout endpoints
- Add password hashing w/ bcrypt
- Include comprehensive unit tests (95% coverage)

Validated: coding standards, docs, proj patterns, testing
```

**For validation fixes:**

```
refactor: improve code standards compliance

- Fix inconsistent naming conventions
- Add missing error handling
- Update docs for clarity
- Ensure test coverage for edge cases

Self-validation: all four pillars verified
```