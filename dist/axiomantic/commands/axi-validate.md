This doc uses axitxt compression: std abbreviations, txtspeak shortcuts, emoji symbols 4 concepts, & omitted articles/pronouns where context clear.
# /axi-validate - Comprehensive Quality Assurance & Cleanup

Perform comprehensive quality assurance & cleanup on: **$ARGUMENTS**

## Comprehensive Validation Framework

Apply the Four-Pillar Validation systematically w/ complete standards compliance:

### 1. Coding Standards Validation

**Style Consistency**: Does code follow established style guide & project conventions?

**Code Quality**: Is code readable, maintainable, following best practices?
- Follow established style guides for your language
- Use consistent formatting & indentation
- Write self-documenting code w/ clear variable names
- Avoid magic numbers & hardcoded values
- Optimize for readability first, perf second
- Use appropriate data structures for the task
- Consider memory usage & algorithmic complexity
- Write modular, reusable code

**Error Handling**: Are errors handled appropriately w/ meaningful messages?
- Handle errors gracefully w/ meaningful messages
- Use language-specific error handling patterns
- Don't suppress errors without good reason
- Log errors appropriately for debugging

**Performance**: Any obvious perf issues or inefficiencies?

**Security**: Any security vulnerabilities or exposed sensitive data?

**Language-Specific Patterns**: 
- Use idiomatic constructs for your language
- Leverage language features appropriately
- Follow established conventions
- Use static analysis tools when available

### 2. Documentation Completeness Validation

**API Documentation**: All public functions/classes/methods documented?
- Document all public interfaces
- Include parameter descriptions & types
- Provide usage examples
- Document error conditions

**Usage Examples**: Clear examples of how to use this code?

**README Updates**: Does README accurately reflect current state?

**Inline Comments**: Complex algorithms or business logic explained?
- Comment complex logic & algorithms
- Explain the "why" behind decisions
- Use clear, concise language
- Avoid obvious comments
- Don't write comments about changes I ask you to make. Comment about the code as it exists, not the history of our session.
- Don't write comments unless they will be useful to a developer reading the code for the first time.
- Don't write "changelog" style comments (e.g., "added", "updated", "removed")

**Architecture Documentation**: Any architectural changes documented?

**Documentation Principles**:
- Write for your audience
- Keep docs close to code
- Update docs when code changes
- Use examples to clarify concepts
- Use consistent terminology
- Structure information logically
- Provide context for decisions
- Make docs searchable

### 3. Project Pattern Consistency Validation

**Existing Patterns**: Implementation follows existing project patterns?

**File Organization**: Files organized according to project structure conventions?

**Naming Conventions**: Variable, function, file names match project standards?

**Import Patterns**: Imports organized consistently w/ rest of project?

**Configuration Management**: Configuration handled consistently w/ existing patterns?

**Architecture Design Standards**:
- Design for maintainability, extensibility, & scalability
- Use appropriate design patterns
- Plan for failure scenarios & security from the start
- Define clear interfaces between components
- Minimize coupling between modules
- Use dependency injection where appropriate
- Document component interactions
- Follow established architectural patterns
- Consider perf implications
- Plan for monitoring, observability, security, & failure scenarios
- Document architectural decisions

### 4. Testing Completeness Validation

**Unit Tests**: Unit tests covering core functionality?

**Integration Tests**: If connecting multiple components, integration tests exist?

**Edge Cases**: Error conditions & edge cases tested?

**Test Coverage**: Test coverage adequate for this functionality?

**Test Quality**: Tests clear, maintainable, testing the right things?

**Mandatory Test Quality Standards**:
- Write tests that verify behavior, not impl
- Use appropriate testing frameworks
- Follow the testing pyramid (unit, integration, e2e)
- Maintain good test coverage
- Write clear, readable tests
- Use descriptive test names
- Test edge cases & error conditions
- Keep tests independent & isolated
- Write tests before implementing features
- Use tests to guide design decisions
- Refactor w/ confidence when tests are in place
- Update tests when req change
- Validate inputs & outputs
- Test error handling paths
- Verify perf req
- Check security & accessibility

**Never Skip Tests - Always Fix Root Cause**:
Fix env/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Systematic Approach**: 1) Discovery/Assessment, 2) Infrastructure/Environment, 3) Core Implementation, 4) Integration, 5) File Organization, 6) Framework Issues, 7) Quality/Completeness, 8) Final Validation

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually, meaningful assertions, edge case coverage.

## Comment Cleanup Process

**When user requests to clean up comments in the project:**

1. **Extract All Comments**: Write a shell command that will find all comments & docstrings in the project (exclude .venv or other such package directories) & write the comments to a file, including the file & line number.

2. **Analyze Each Comment**: Go over each comment & determine if it does any of the following:
   - **Explains a change to the code** - More of a CHANGELOG type of comment within the code
   - **Makes reference to Phases** of some impl plan
   - **States the obvious** - If the code below it or next to it is readable & self-explanatory, we don't need the comment

3. **Document Violations**: Create a document in `.tmp/` detailing all of those violations

4. **Confirm w/ User**: Present the analysis & get approval before making changes

5. **Execute Cleanup**: Start deleting the bad comments in batches

## Code Comment Standards - CRITICAL ENFORCEMENT

**ABSOLUTELY FORBIDDEN comment patterns in this project:**
- **NO dev history references**: "Clean impl", "Replaces X lines", "Previous version", "Updated from", "Changed to", "New approach", "Rewritten", "Migrated from", "Instead of"
- **NO comparison to other impls**: "Unlike X", "Better than Y", "Simpler than Z", "NO X complexity", "Eliminates Y"
- **NO phase/session/time references**: "Phase 1", "This session", "Now", "After refactoring", "During migration"
- **NO obvious code descriptions**: "Function definition", "Class declaration", "Module initialization", "Import statements"
- **NO benefit claims**: "No segfaults", "Automatic memory mgmt", "Stability", "Performance improvement"

**ZERO TOLERANCE ENFORCEMENT**: Every comment violating these rules MUST be deleted immediately. These waste tokens & violate the principle of writing for developers seeing code for the first time.

**ONLY write comments that:**
- Explain complex algorithms or business logic
- Document why specific decisions were made (not when/how they changed)
- Clarify non-obvious behavior or edge cases
- Provide context that cannot be inferred from reading the code

## Project Cleanup Process

**Refactoring & Automation Guidelines**:
Before writing regex fix-up scripts: Test patterns on sample text first, use specific non-greedy patterns, & avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve original content, & validate syntax before running on all files.

## Self-Validation Standards

**After Every Major Implementation Step**:
After completing any significant code change, impl, or milestone, apply Four-Pillar Validation.

**Self-Validation Process**:
**For each valid8n pillar:**
1. **Review** - Check code against specific criteria
2. **Identify gaps** - Be brutally honest about shortcomings
3. **Fix immediately** - Don't postpone valid8n fixes
4. **Document valid8n** - Note what was checked & confirmed

**Example Self-Validation Comment:**
```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows project style, proper error handling
# ✅ Documentation: Docstrings added, README updated
# ✅ Project Patterns: Consistent w/ existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

**When to Validate**:
- After implementing features, refactoring, or bug fixes
- Before committing significant changes
- At completion of plan milestones

## Analysis Process

1. **Survey the codebase** to understand existing patterns & conventions
2. **Analyze the specified code** against each pillar systematically
3. **Identify specific gaps & issues** w/ concrete examples
4. **Provide actionable recommendations** for improvement
5. **Prioritize fixes** by impact & effort required

## Critical Assessment

Be pessimistic & thorough. Look for:
- Hidden complexity or technical debt
- Missing error handling or edge cases
- Performance bottlenecks or anti-patterns
- Security vulnerabilities or data exposure
- Inconsistencies w/ project standards
- Missing or inadequate test coverage

**Remember**: The goal is production-ready code that meets Axiomantic standards, not just "working" code.