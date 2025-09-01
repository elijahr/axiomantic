# /axi-validate - Comprehensive Quality Assurance & Cleanup

Perform comprehensive quality assurance and cleanup on: **$ARGUMENTS**

> **💡 Best Results**: Apply Four-Pillar Validation systematically - be pessimistic and thorough to catch issues before they reach production.

## 🚨 CRITICAL VALIDATION PRINCIPLES

**Four-Pillar Validation**: Every significant code change must pass all four pillars - Coding Standards, Documentation, Project Patterns, Testing.

**Zero-Tolerance Comment Policy**: Immediately delete any comments referencing development history, phases, sessions, or obvious code descriptions.

**Production-Ready Standard**: Goal is production-ready code meeting Axiomantic standards, not just "working" code.

## Four-Pillar Validation Framework

### 1. Coding Standards Validation

**Style Consistency**
- Follows established style guide and project conventions
- Consistent formatting, indentation, naming patterns
- Uses idiomatic constructs for the language

**Code Quality**
- Self-documenting code with clear variable names
- Avoids magic numbers and hardcoded values
- Optimized for readability first, performance second
- Modular, reusable code structure

**Error Handling**
- Errors handled gracefully with meaningful messages
- Uses language-specific error handling patterns
- Appropriate logging for debugging
- No suppressed errors without good reason

**Performance & Security**
- No obvious performance bottlenecks or inefficiencies
- No security vulnerabilities or exposed sensitive data
- Memory usage and algorithmic complexity considered

### 2. Documentation Completeness Validation

**API Documentation**
- All public functions/classes/methods documented
- Parameter descriptions and types included
- Usage examples provided
- Error conditions documented

**Code Comments**
- Complex algorithms and business logic explained
- Comments explain "why" behind decisions, not "what"
- Clear, concise language avoiding obvious statements
- **NO development history, phase references, track references, or session comments**

**Project Documentation**
- README accurately reflects current state
- Architecture changes documented where relevant
- Usage examples clear and up-to-date

**FORBIDDEN Comment Patterns (DELETE IMMEDIATELY)**
```
❌ "Clean implementation"
❌ "Replaces X lines"
❌ "Phase 1", "Track C", "This session"
❌ "Updated from", "Changed to"
❌ "Function definition", "Class declaration"
❌ "No segfaults", "Stability improvement"
```

### 3. Project Pattern Consistency Validation

**Pattern Adherence**
- Implementation follows existing project patterns
- File organization matches project structure conventions
- Variable, function, file names match project standards
- Import patterns organized consistently

**Architecture Integration**
- Uses appropriate design patterns for the codebase
- Follows established architectural patterns
- Minimizes coupling between modules
- Integrates cleanly with existing systems

**Configuration Management**
- Configuration handled consistently with existing patterns
- Environment variables and settings properly managed
- Deployment and build system integration considered

### 4. Testing Completeness Validation

**Test Coverage**
- Unit tests covering core functionality
- Integration tests for multi-component interactions
- Edge cases and error conditions tested
- **100% pass rate - no skipped or expected failure tests**

**Test Quality**
- Tests verify behavior, not implementation
- Clear, readable tests with descriptive names
- Tests independent and properly isolated
- Meaningful assertions validating actual outcomes

**Testing Standards**
- Follows project testing frameworks and conventions
- Test-driven development approach when appropriate
- Proper test data management and cleanup
- Performance and security testing where relevant

## Comment Cleanup Process

**When user requests comment cleanup:**

1. **Extract All Comments**
   ```bash
   find . -name "*.py" -not -path "./.venv/*" -exec grep -Hn "#" {} \; > .tmp/all_comments.txt
   ```

2. **Analyze Each Comment** for violations:
   - Development history references
   - Phase/session/time references
   - Obvious code descriptions
   - Comparison to other implementations

3. **Document Violations** in `.tmp/comment_violations.md`

4. **Get User Approval** before making changes

5. **Execute Cleanup** in batches, removing violating comments

## Self-Validation Standards

**After Every Major Implementation Step:**
Apply Four-Pillar Validation after completing significant code changes, implementations, or milestones.

**Self-Validation Process:**
1. **Review** - Check code against specific criteria for each pillar
2. **Identify gaps** - Be brutally honest about shortcomings
3. **Fix immediately** - Don't postpone validation fixes
4. **Document validation** - Note what was checked and confirmed

**Example Self-Validation:**
```markdown
# Validation Checkpoint:
✅ Coding Standards: Project style followed, proper error handling
✅ Documentation: Docstrings added, README updated
✅ Project Patterns: Consistent with existing service structure
✅ Testing: Unit tests added, edge cases covered
```

## Critical Assessment Approach

**Be Pessimistic and Thorough - Look for:**
- Hidden complexity or technical debt
- Missing error handling or edge cases
- Performance bottlenecks or anti-patterns
- Security vulnerabilities or data exposure
- Inconsistencies with project standards
- Missing or inadequate test coverage

**Analysis Process:**
1. **Survey the codebase** to understand existing patterns
2. **Analyze specified code** against each pillar systematically
3. **Identify specific gaps** with concrete examples
4. **Provide actionable recommendations** for improvement
5. **Prioritize fixes** by impact and effort required

## Quality Assurance Standards

### Code Review Checklist
- **Functionality**: Does the code do what it's supposed to do?
- **Readability**: Can other developers easily understand this code?
- **Maintainability**: How easy will this be to modify in the future?
- **Performance**: Are there any obvious performance issues?
- **Security**: Any potential security vulnerabilities?
- **Testing**: Is the code adequately tested?

### Architecture Review
- **Design Patterns**: Are appropriate patterns being used?
- **Component Coupling**: Are components appropriately decoupled?
- **Interface Design**: Are APIs well-designed and documented?
- **Scalability**: Will this approach scale appropriately?

### Documentation Review
- **Completeness**: Is all necessary information documented?
- **Accuracy**: Is the documentation correct and up-to-date?
- **Clarity**: Is the documentation clear and useful?
- **Examples**: Are there sufficient usage examples?

## Success Criteria
- ✅ **All Four Pillars Validated** - Coding standards, documentation, patterns, testing
- ✅ **Production-Ready Code** - Meets professional quality standards
- ✅ **No Forbidden Comments** - All development history and obvious comments removed
- ✅ **Comprehensive Assessment** - Thorough analysis identifying real issues
- ✅ **Actionable Recommendations** - Clear guidance for addressing any gaps
- ✅ **Project Integration** - Code fits seamlessly with existing codebase
- ✅ **Quality Assurance** - Systematic review ensuring reliability

## Usage
```
/axi-validate [file_or_directory]
```

**Examples:**
```
/axi-validate src/                    # Validate entire source directory
/axi-validate src/auth/auth.py        # Validate specific file
/axi-validate --cleanup-comments      # Focus on comment cleanup
/axi-validate --full-project          # Complete project validation
```

Remember: Validation is not about finding fault - it's about ensuring code meets professional standards and integrates seamlessly with the project. Be thorough but constructive in identifying areas for improvement.
