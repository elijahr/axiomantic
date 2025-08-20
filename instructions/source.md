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
- Follow [Planning Standards](#planning-standards) below for detailed planning process

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

After completing any significant code change, implementation, or milestone, apply [Four-Pillar Validation](base.instructions.md#four-pillar-validation).

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

All non-trivial work must be planned and documented BEFORE implementation begins.

#### Planning Process

1. **Step Back & Survey**: Read relevant project files, understand current architecture, identify affected components, note constraints
2. **Internal Dialogue**: "What's the real problem?" "Different approaches?" "Risks/trade-offs?" "System interactions?" "What could go wrong?"
3. **Context-Informed Planning**: Reflect current codebase patterns, existing infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review against actual codebase, check assumptions, ensure actionable/specific, consider alternatives

#### Planning Hierarchy

1. **ROADMAP.md** - Major features, significant refactoring, multi-phase projects
2. **README.md (Roadmap Section)** - Project-level planning and feature roadmaps
3. **Temporary Plan Files** - All other planning (create `.tmp/`, ensure in `.gitignore`)

#### Plan Template

```markdown
# [Feature/Task] Implementation Plan

## Overview: [Brief description of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core Implementation → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes validation | Risk mitigation]
```

#### Plan Management

**Complexity Guidelines**: Simple (<1hr) = inline validation; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**User Intent Signals**:

- "No plan"/"ignore plans" → DISABLED
- "Pause plan" → PAUSED
- "Resume plan" → ACTIVE
- "Done with plan" → COMPLETED

**Progress Tracking**: Auto-update completion status, mark completed items, update progress indicators, reference current status in responses

### Plan Creation Guidance

For substantial tasks with multiple phases, prompt user: "This looks like a substantial task with multiple phases. Would you like me to create a project plan/roadmap first to track our progress? This helps ensure we don't miss steps and makes it easier to resume work later."

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
