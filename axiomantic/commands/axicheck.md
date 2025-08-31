# Axicheck - Comprehensive Code Quality Analysis

Perform a thorough Axiomantic code quality analysis on: **$ARGUMENTS**

## Analysis Framework

Apply the Four-Pillar Validation systematically:

### 1. Coding Standards Validation
- **Style Consistency**: Does code follow established style guide and project conventions?
- **Code Quality**: Is code readable, maintainable, following best practices?
- **Error Handling**: Are errors handled appropriately with meaningful messages?
- **Performance**: Any obvious performance issues or inefficiencies?  
- **Security**: Any security vulnerabilities or exposed sensitive data?

### 2. Documentation Completeness Validation
- **API Documentation**: All public functions/classes/methods documented?
- **Usage Examples**: Clear examples of how to use this code?
- **README Updates**: Does README accurately reflect current state?
- **Inline Comments**: Complex algorithms or business logic explained?
- **Architecture Documentation**: Any architectural changes documented?

### 3. Project Pattern Consistency Validation
- **Existing Patterns**: Implementation follows existing project patterns?
- **File Organization**: Files organized according to project structure conventions?
- **Naming Conventions**: Variable, function, file names match project standards?
- **Import Patterns**: Imports organized consistently with rest of project?
- **Configuration Management**: Configuration handled consistently with existing patterns?

### 4. Testing Completeness Validation
- **Unit Tests**: Unit tests covering core functionality?
- **Integration Tests**: If connecting multiple components, integration tests exist?
- **Edge Cases**: Error conditions and edge cases tested?
- **Test Coverage**: Test coverage adequate for this functionality?
- **Test Quality**: Tests clear, maintainable, testing the right things?

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