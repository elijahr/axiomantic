# /axi-validate - Comprehensive Quality Assurance & Cleanup

Perform comprehensive quality assurance and cleanup on: **$ARGUMENTS**

## Comprehensive Validation Framework

Apply the Four-Pillar Validation systematically with complete standards compliance:

### 1. Coding Standards Validation

**Style Consistency**: Does code follow established style guide and project conventions?

**Code Quality**: Is code readable, maintainable, following best practices?
- Follow established style guides for your language
- Use consistent formatting and indentation
- Write self-documenting code with clear variable names
- Avoid magic numbers and hardcoded values
- Optimize for readability first, performance second
- Use appropriate data structures for the task
- Consider memory usage and algorithmic complexity
- Write modular, reusable code

**Error Handling**: Are errors handled appropriately with meaningful messages?
- Handle errors gracefully with meaningful messages
- Use language-specific error handling patterns
- Don't suppress errors without good reason
- Log errors appropriately for debugging

**Performance**: Any obvious performance issues or inefficiencies?

**Security**: Any security vulnerabilities or exposed sensitive data?

**Language-Specific Patterns**: 
- Use idiomatic constructs for your language
- Leverage language features appropriately
- Follow established conventions
- Use static analysis tools when available

### 2. Documentation Completeness Validation

**API Documentation**: All public functions/classes/methods documented?
- Document all public interfaces
- Include parameter descriptions and types
- Provide usage examples
- Document error conditions

**Usage Examples**: Clear examples of how to use this code?

**README Updates**: Does README accurately reflect current state?

**Inline Comments**: Complex algorithms or business logic explained?
- Comment complex logic and algorithms
- Explain the "why" behind decisions
- Use clear, concise language
- Avoid obvious comments
- Don't write comments about changes I ask you to make. Comment about the code as it exists, not the history of our session.
- Don't write comments unless they will be useful to a developer reading the code for the first time.
- Don't write "changelog" style comments (e.g., "added", "updated", "removed")

**Architecture Documentation**: Any architectural changes documented?

**Documentation Principles**:
- Write for your audience
- Keep documentation close to code
- Update docs when code changes
- Use examples to clarify concepts
- Use consistent terminology
- Structure information logically
- Provide context for decisions
- Make documentation searchable

### 3. Project Pattern Consistency Validation

**Existing Patterns**: Implementation follows existing project patterns?

**File Organization**: Files organized according to project structure conventions?

**Naming Conventions**: Variable, function, file names match project standards?

**Import Patterns**: Imports organized consistently with rest of project?

**Configuration Management**: Configuration handled consistently with existing patterns?

**Architecture Design Standards**:
- Design for maintainability, extensibility, and scalability
- Use appropriate design patterns
- Plan for failure scenarios and security from the start
- Define clear interfaces between components
- Minimize coupling between modules
- Use dependency injection where appropriate
- Document component interactions
- Follow established architectural patterns
- Consider performance implications
- Plan for monitoring, observability, security, and failure scenarios
- Document architectural decisions

### 4. Testing Completeness Validation

**Unit Tests**: Unit tests covering core functionality?

**Integration Tests**: If connecting multiple components, integration tests exist?

**Edge Cases**: Error conditions and edge cases tested?

**Test Coverage**: Test coverage adequate for this functionality?

**Test Quality**: Tests clear, maintainable, testing the right things?

**Mandatory Test Quality Standards**:
- Write tests that verify behavior, not implementation
- Use appropriate testing frameworks
- Follow the testing pyramid (unit, integration, e2e)
- Maintain good test coverage
- Write clear, readable tests
- Use descriptive test names
- Test edge cases and error conditions
- Keep tests independent and isolated
- Write tests before implementing features
- Use tests to guide design decisions
- Refactor with confidence when tests are in place
- Update tests when requirements change
- Validate inputs and outputs
- Test error handling paths
- Verify performance requirements
- Check security and accessibility

**Never Skip Tests - Always Fix Root Cause**:
Fix environment/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Systematic Approach**: 1) Discovery/Assessment, 2) Infrastructure/Environment, 3) Core Implementation, 4) Integration, 5) File Organization, 6) Framework Issues, 7) Quality/Completeness, 8) Final Validation

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually, meaningful assertions, edge case coverage.

## Comment Cleanup Process

**When user requests to clean up comments in the project:**

1. **Extract All Comments**: Write a shell command that will find all comments and docstrings in the project (exclude .venv or other such package directories) and write the comments to a file, including the file and line number.

2. **Analyze Each Comment**: Go over each comment and determine if it does any of the following:
   - **Explains a change to the code** - More of a CHANGELOG type of comment within the code
   - **Makes reference to Phases** of some implementation plan
   - **States the obvious** - If the code below it or next to it is readable and self-explanatory, we don't need the comment

3. **Document Violations**: Create a document in `.tmp/` detailing all of those violations

4. **Confirm with User**: Present the analysis and get approval before making changes

5. **Execute Cleanup**: Start deleting the bad comments in batches

## Code Comment Standards - CRITICAL ENFORCEMENT

**ABSOLUTELY FORBIDDEN comment patterns in this project:**
- **NO development history references**: "Clean implementation", "Replaces X lines", "Previous version", "Updated from", "Changed to", "New approach", "Rewritten", "Migrated from", "Instead of"
- **NO comparison to other implementations**: "Unlike X", "Better than Y", "Simpler than Z", "NO X complexity", "Eliminates Y"
- **NO phase/session/time references**: "Phase 1", "This session", "Now", "After refactoring", "During migration"
- **NO obvious code descriptions**: "Function definition", "Class declaration", "Module initialization", "Import statements"
- **NO benefit claims**: "No segfaults", "Automatic memory management", "Stability", "Performance improvement"

**ZERO TOLERANCE ENFORCEMENT**: Every comment violating these rules MUST be deleted immediately. These waste tokens and violate the principle of writing for developers seeing code for the first time.

**ONLY write comments that:**
- Explain complex algorithms or business logic
- Document why specific decisions were made (not when/how they changed)
- Clarify non-obvious behavior or edge cases
- Provide context that cannot be inferred from reading the code

## Project Cleanup Process

**Refactoring and Automation Guidelines**:
Before writing regex fix-up scripts: Test patterns on sample text first, use specific non-greedy patterns, and avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve original content, and validate syntax before running on all files.

## Self-Validation Standards

**After Every Major Implementation Step**:
After completing any significant code change, implementation, or milestone, apply Four-Pillar Validation.

**Self-Validation Process**:
**For each validation pillar:**
1. **Review** - Check code against specific criteria
2. **Identify gaps** - Be brutally honest about shortcomings
3. **Fix immediately** - Don't postpone validation fixes
4. **Document validation** - Note what was checked and confirmed

**Example Self-Validation Comment:**
```
# Self-Validation Checkpoint:
# ✅ Coding Standards: Follows project style, proper error handling
# ✅ Documentation: Docstrings added, README updated
# ✅ Project Patterns: Consistent with existing service structure
# ✅ Testing: Unit tests added, edge cases covered
```

**When to Validate**:
- After implementing features, refactoring, or bug fixes
- Before committing significant changes
- At completion of plan milestones

## Analysis Process

1. **Survey the codebase** to understand existing patterns and conventions
2. **Analyze the specified code** against each pillar systematically
3. **Identify specific gaps and issues** with concrete examples
4. **Provide actionable recommendations** for improvement
5. **Prioritize fixes** by impact and effort required

## Critical Assessment

Be pessimistic and thorough. Look for:
- Hidden complexity or technical debt
- Missing error handling or edge cases
- Performance bottlenecks or anti-patterns
- Security vulnerabilities or data exposure
- Inconsistencies with project standards
- Missing or inadequate test coverage

**Remember**: The goal is production-ready code that meets Axiomantic standards, not just "working" code.