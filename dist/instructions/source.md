---
applyTo: "none"
---

# Source Code Standards & Architecture

## II. DEV STANDARDS

### Code Standards

#### Style & Quality

- Follow established style guides for lang
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

- Before writing regex fix-up scripts: Test patterns on sample text first, use specific non-greedy patterns, & avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve original content, & validate syntax before running on all files.

##### Comment Cleanup 🔄

**When user req to clean up comments in proj:**

1. **Extract All Comments**: Write shell cmd that will find all comments & docstrings in proj (exclude .venv | other pkg dirs) & write comments to file, including file & line number.

2. **Analyze Each Comment**: Go over each comment & determine if it does any of the following:

   - **Explains change to code** - More of CHANGELOG type comment within code
   - **Makes reference to Phases** of some impl plan
   - **States obvious** - If code below it | next to it is readable & self-explanatory, we don't need comment

3. **📝 Violations**: Create doc in `.tmp/` detailing all violations

4. **Confirm w/ User**: Present analysis & get approval before making changes

5. **Execute Cleanup**: Start deleting bad comments in batches

#### Lang-Specific Patterns

- Use idiomatic constructs for lang
- Leverage lang features appropriately
- Follow established conventions
- Use static analysis 🔧 when available

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
- 📝 component interactions

#### Planning & impl

- Break down complex problems, consider non-functional req
- Plan for testing & validation, 📝 architectural decisions
- Follow [Planning Standards](#planning-standards) below for detailed planning 🔄

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
- 📝 env & conditions
- Create minimal test cases
- Use debugging 🔧 effectively

#### Root Cause Analysis

- Look beyond symptoms to underlying causes
- Consider multiple potential causes
- Use scientific method for investigation
- 📝 findings for future reference

#### Problem Resolution

- Fix root cause, not symptoms
- Test fix thoroughly
- Consider impact on other parts of system
- Update 📝 & tests as needed

---

## III. PROJECT MGMT

### Self-Validation Standards

#### After Every Major impl Step

After completing any significant code change, impl, | milestone, apply [Four-Pillar Validation](base.instructions.md#four-pillar-validation).

#### Self-Validation 🔄

**For each validation pillar:**

1. **Review code** against specific criteria
2. **Identify gaps | issues** - be brutally honest
3. **Fix immediately** - don't postpone validation fixes
4. **📝 validation** - briefly note what you checked & confirmed

**Example Self-Validation Comment:**

```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows proj style, proper error handling
# ✅ 📝: Docstrings added, README updated
# ✅ Project Patterns: Consistent w/ existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

#### When to Validate

- After implementing new feature | component
- After refactoring existing code
- After fixing bug (ensure fix doesn't break standards)
- Before committing significant changes
- At completion of plan milestones

### Planning Standards

All non-trivial work must be planned & documented BEFORE impl begins.

#### Planning 🔄

1. **Step Back & Survey**: Read relevant proj files, understand current architecture, identify affected components, note constraints
2. **Internal Dialogue**: "What's real problem?" "Different approaches?" "Risks/trade-offs?" "System interactions?" "What could go wrong?"
3. **Context-Informed Planning**: Reflect current codebase patterns, existing infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review against actual codebase, check assumptions, ensure actionable/specific, consider alternatives

#### Planning Hierarchy

1. **ROADMAP.md** - Major features, significant refactoring, multi-phase proj
2. **README.md (Roadmap Section)** - Project-level planning & feature roadmaps
3. **Temporary Plan Files** - All other planning (create `.tmp/`, ensure in `.gitignore`)

#### Plan Template

```markdown
# [Feature/Task] impl Plan

## Overview: [Brief description of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core impl → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes validation | Risk mitigation]
```

#### Plan mgmt

**Complexity Guidelines**: Simple (<1hr) = inline validation; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**User Intent Signals**:

- "No plan"/"ignore plans" → DISABLED
- "Pause plan" → PAUSED
- "Resume plan" → ACTIVE
- "Done w/ plan" → COMPLETED

**Progress Tracking**: Auto-update completion status, mark completed items, update progress indicators, reference current status in responses

### Plan Creation Guidance

For substantial tasks w/ multiple phases, prompt user: "This looks like substantial task w/ multiple phases. Would you like me to create proj plan/roadmap first to track our progress? This helps ensure we don't miss steps & makes it easier to resume work later."

### Milestone & Commit mgmt

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

Validated: coding standards, 📝, proj patterns, testing
```

**For validation fixes:**

```
refactor: improve code standards compliance

- Fix inconsistent naming conventions
- Add missing error handling
- Update 📝 for clarity
- Ensure test coverage for edge cases

Self-validation: all four pillars verified
```