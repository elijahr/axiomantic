---
applyTo: "none"
---

# Source Code Standards & Architecture

## II. DEVELOPMENT STANDARDS

### Code Standards

#### Style & Quality

- Follow estab style guides for your lang
- Use consistent formatting & indentation
- Write self-documenting code w/ clear variable names
- Avoid magic numbers & hardcoded values

#### Perf & Maintainability

- Optimize for readability first, perf second
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

##### Comment Cleanup 🔧

**When user req to clean up comments in proj:**

1. **Extract All Comments**: Write shell cmd that will find all comments & docstrings in proj (exclude .venv | other such pkg dirs) & write comments to file, including file & line number.

2. **Analyze Each Comment**: Go over each comment & determine if it does any of:

   - **Explains change to code** - More of CHANGELOG type comment w/i code
   - **Makes ref to Phases** of some impl plan
   - **States obvi** - If code below | next to it is readable & self-explanatory, we don't need comment

3. **Document Violations**: Create doc in `.tmp/` detailing all violations

4. **Confirm w/ User**: Present analysis & get approval before making changes

5. **Execute Cleanup**: Start deleting bad comments in batches

#### Code Comment Overrides - CRITICAL ENFORCEMENT

**ABSOLUTELY FORBIDDEN comment patterns in this proj:**
- **NO dev history refs**: "Clean impl", "Replaces X lines", "Previous version", "Updated from", "Changed to", "New approach", "Rewritten", "Migrated from", "Instead of"
- **NO comparison to other impls**: "Unlike X", "Better than Y", "Simpler than Z", "NO X complexity", "Eliminates Y"
- **NO phase/session/time refs**: "Phase 1", "This session", "Now", "After refactoring", "During migration"
- **NO obvi code desc**: "Function definition", "Class declaration", "Module initialization", "Import statements"
- **NO benefit claims**: "No segfaults", "Automatic memory mgmt", "Stability", "Perf improvement"

**ZERO TOLERANCE ENFORCEMENT**: Every comment violating these rules MUST be deleted immediately. These waste tokens & violate principle of writing for devs seeing code for first time.

**ONLY write comments that:**
- Explain complex algorithms | business logic
- Document why specific decisions were made (not when/how they changed)
- Clarify non-obvi behavior | edge cases
- Provide context that can't be inferred from reading code

#### Lang-Specific Patterns

- Use idiomatic constructs for your lang
- Leverage lang features appropriately
- Follow estab conventions
- Use static analysis 🔧 when available

### Architecture Design

#### Sys Design Principles

- Design for maintainability, extensibility, & scalability
- Use appropriate design patterns
- Plan for failure scenarios & sec from start

#### Component Relationships

- Define clear interfaces between components
- Minimize coupling between modules
- Use dependency injection where appropriate
- Document component interactions

#### Planning & Impl

- Break down complex problems, consider non-functional req
- Follow [Planning Standards](#planning-standards) below for detailed planning 🔧

#### Best Practices

- Follow estab architectural patterns
- Consider perf implications
- Plan for monitoring, observability, sec, & failure scenarios
- Document architectural decisions

### Debugging Methodology

#### Systematic Approach

- Reproduce issue consistently
- Isolate problem area
- Form hypotheses about cause
- Test hypotheses systematically

#### Data Collection

- Gather relevant logs & error messages
- Document env & conditions
- Create minimal test cases
- Use debugging 🔧 effectively

#### Root Cause Analysis

- Look beyond symptoms to underlying causes
- Consider multiple potential causes
- Use scientific method for investigation
- Document findings for future ref

#### Problem Resolution

- Fix root cause, not just symptoms
- Test fix thoroughly
- Consider impact on other parts of sys
- Update 📝 & tests as needed

---

## III. PROJECT MGMT

### Self-Validation Standards

#### After Every Major Impl Step

After completing significant code change, impl, | milestone, apply [Four-Pillar Validation](base.instructions.md#four-pillar-validation).

#### Self-Validation 🔧

**For each validation pillar:**
1. **Review** - Check code vs specific criteria
2. **Identify gaps** - Be brutally honest about shortcomings
3. **Fix immediately** - Don't postpone validation fixes
4. **Document validation** - Note what was checked & confirmed

**Example Self-Validation Comment:**

```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows proj style, proper error handling
# ✅ 📝: Docstrings added, README updated
# ✅ Project Patterns: Consistent w/ existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

#### When to Validate

- After implementing features, refactoring, | bug fixes
- Before committing significant changes
- At completion of plan milestones

### Planning Standards

All non-trivial work must be planned & documented BEFORE impl begins.

#### Planning 🔧

1. **Step Back & Survey**: Read relevant files, understand architecture, identify components, note constraints
2. **Internal Dialogue**: Question problem, approaches, risks/trade-offs, sys interactions
3. **Context-Informed Planning**: Reflect codebase patterns, infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review vs codebase, check assumptions, ensure actionable/specific, consider alternatives

#### Planning Hierarchy

1. **ROADMAP.md** - Major features, significant refactoring, multi-phase projs
2. **README.md (Roadmap Section)** - Proj-level planning & feature roadmaps
3. **Temp Plan Files** - All other planning (create `.tmp/`, ensure in `.gitignore`)

#### Plan Template

```markdown
# [Feature/Task] Impl Plan

## Overview: [Brief desc of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core Impl → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes validation | Risk mitigation]
```

#### Plan Mgmt

**Complexity Guidelines**: Simple (<1hr) = inline validation; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**User Intent Signals**:

- "No plan"/"ignore plans" → DISABLED
- "Pause plan" → PAUSED
- "Resume plan" → ACTIVE
- "Done w/ plan" → COMPLETED

**Progress Tracking**: Auto-update completion status, mark completed items, update progress indicators, ref current status in responses

### Plan Creation Guidance

For substantial tasks w/ multiple phases, prompt user: "This looks like substantial task w/ multiple phases. Would you like me to create proj plan/roadmap first to track our progress? This helps ensure we don't miss steps & makes it easier to resume work later."

### Milestone & Commit Mgmt

**After completing significant milestones | plan phases:**

- **Self-validate first**: Complete all four validation pillars before considering milestone complete
- **Prompt user to commit**: "This completes [milestone/phase]. All validation pillars checked. Would you like to commit these changes before continuing?"
- **Use conventional commit format**: `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include validation confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"
- **Break large changes into logical commits** when working through multi-step plans

#### Commit Message Templates

**For validated milestones:**

```
feat: implement user auth sys

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
