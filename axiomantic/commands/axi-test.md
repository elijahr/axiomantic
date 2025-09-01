# /axi-test - Comprehensive Testing Workflow

Execute comprehensive testing with intelligent failure analysis and quality assurance for: **$ARGUMENTS**

> **💡 Best Results**: Focus on systematic root cause resolution rather than skipping tests. Every test should validate meaningful behavior.

## 🚨 CRITICAL TESTING PRINCIPLES

**ZERO TOLERANCE for Test Skipping**: Fix environment/dependencies/code - never use `pytest.skip()`, `@pytest.mark.skip`, or `@pytest.mark.xfail`.

**Success Criteria**: `pytest -v` showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually with meaningful assertions and edge case coverage.

**Systematic Root Cause Resolution**: Use the 8-phase systematic approach to fix all test issues comprehensively.

## Systematic Test Execution Process

### Phase 1: Discovery, Assessment & Rule Integration
**Initial Test Landscape Analysis:**
```bash
pytest --collect-only  # Discover all tests
pytest -v             # Run with verbose output
pytest --tb=short -v  # Check for skipped/failed tests
```

**Active Rules Integration:**
- Load user overrides (`.axiomantic/user-overrides.md`) for testing preferences
- Load project overrides (`.axiomantic/project-overrides.md`) for team testing standards
- Apply rule precedence (User > Project > Base) for testing approach
- Note coverage requirements, test patterns, and framework preferences from active rules

**Assessment Questions:**
- How many tests exist and where are they located?
- What testing frameworks and patterns are being used?
- Are there skipped or expected failure tests that need fixing?
- What types of failures are occurring (import, assertion, environment)?
- **Do current tests meet active rule requirements?** (coverage, patterns, etc.)

### Phase 2: Infrastructure & Environment Setup
**Environment Validation:**
- Verify Python environment and dependencies
- Check test configuration files (pytest.ini, conftest.py)
- Ensure test database connections and external dependencies
- Validate test-specific environment variables and settings

**Common Issues to Fix:**
- Missing test dependencies in requirements
- Incorrect Python path or module discovery
- Missing test configuration or settings
- Database connectivity problems

### Phase 3: Core Implementation Fixes
**Logic and Implementation Issues:**
- Fix bugs in application code causing test failures
- Implement missing functionality that tests expect
- Correct edge case handling and error conditions
- Update implementation to match test expectations

### Phase 4: Integration & Framework Resolution
**Test Framework Issues:**
- Fix pytest configuration and plugin problems
- Resolve fixture and parameterization issues
- Address test collection and discovery problems
- Fix mocking and stubbing complications

### Phase 5: File Organization & Structure
**Test Organization:**
- Organize test files following project conventions
- Ensure test discovery works correctly
- Fix import statements and module structure
- Maintain clear test file hierarchy

### Phase 6: Framework & Configuration Issues
**Advanced Framework Problems:**
- Address pytest plugin compatibility
- Fix parameterization and fixture scope issues
- Handle test framework version conflicts
- Resolve test execution and collection edge cases

### Phase 7: Quality & Validation-Aligned Enhancement
**Test Quality Improvements Aligned with Active Rules:**
- Enhance test coverage to meet active rule requirements (project overrides may specify minimums)
- Improve assertions to be more meaningful following active patterns
- Add missing test scenarios based on project-specific needs
- Ensure tests validate actual behavior, not just execution
- **Apply validation criteria**: Tests should follow Five-Pillar standards during creation

### Phase 8: Final Validation & Rule Compliance
**Comprehensive Validation with Active Rules:**
```bash
pytest -v --tb=short                    # 100% pass rate verification
pytest --cov=src --cov-report=term-missing --cov-fail-under=90  # Coverage check (adjust based on active rules)
pytest --durations=10                   # Performance validation
```

**Active Rule Compliance Check:**
- Verify coverage meets project override requirements (if specified)
- Confirm test patterns follow user/project preferences
- Validate test organization matches project standards
- Check test execution approach aligns with active rules

## Test Quality Standards

### Meaningful Test Requirements
- **Behavior Validation**: Tests verify behavior, not implementation details
- **Clear Test Names**: Descriptive names explaining what's being tested
- **Independent Tests**: Each test runs independently without dependencies
- **Edge Case Coverage**: Error conditions and boundary cases tested
- **Meaningful Assertions**: Assertions validate actual expected outcomes

### Test Organization Standards
- Follow project testing conventions and file organization
- Use consistent test naming patterns (test_*, *_test.py)
- Organize tests by feature or module
- Separate unit, integration, and end-to-end tests clearly

## Intelligent Failure Analysis

### Failure Categorization Process
When tests fail, systematically categorize:

1. **Import/Environment Errors**
   - Missing dependencies or import path issues
   - Module discovery problems
   - Environment configuration failures

2. **Assertion Failures (Logic Errors)**
   - Implementation bugs causing incorrect behavior
   - Missing functionality that tests expect
   - Logic errors in application code

3. **Framework/Configuration Issues**
   - pytest setup or plugin problems
   - Fixture or parameterization failures
   - Test collection or discovery issues

4. **Test Design Problems**
   - Poor test isolation or dependencies
   - Timing or concurrency issues
   - Inadequate mocking or stubbing

### Root Cause Analysis Process
For each failure:
1. **What is the test trying to validate?**
2. **What behavior is occurring vs. expected?**
3. **Is this a test problem or implementation problem?**
4. **Are there environmental or dependency factors?**

### Fix Strategy Selection
- **Fix Implementation**: When behavior is wrong
- **Fix Test**: When expectations are incorrect
- **Fix Environment**: When setup is wrong
- **Improve Test Design**: When test is poorly written

## Test Coverage & Quality Metrics

### Coverage Analysis
```bash
pytest --cov=src --cov-report=html      # Generate detailed coverage
pytest --cov=src --cov-report=term-missing  # Show missing lines
```

**Coverage Quality Assessment:**
- Identify untested code paths and functions
- Focus on critical business logic and edge cases
- Ensure error handling paths are tested
- Validate boundary conditions and input validation

### Quality Gates Checklist
- ✅ **100% Pass Rate**: All tests pass without skips or expected failures
- ✅ **Meaningful Coverage**: Critical functionality well-tested (typically 90%+)
- ✅ **Performance**: Tests execute in reasonable time
- ✅ **Organization**: Clear structure following project conventions
- ✅ **Behavior Validation**: Tests verify meaningful behavior
- ✅ **Edge Cases**: Error conditions and boundaries tested
- ✅ **Independence**: Tests run independently without side effects

## Framework-Specific Best Practices

### pytest Best Practices
- Leverage fixtures for consistent test data setup
- Use parameterization for testing multiple scenarios
- Implement proper test isolation and cleanup
- Use descriptive assertion messages
- Organize tests with clear conftest.py structure

### Test Data Management
- Use fixtures for consistent test data
- Avoid hard-coded test data that makes tests brittle
- Implement proper test isolation and cleanup
- Use factories or builders for complex test data

### Mocking & Stubbing
- Mock external dependencies appropriately
- Use stubs for consistent test behavior
- Ensure mocks match actual interfaces
- Test both happy path and error conditions

## Success Criteria
- ✅ **100% test pass rate** with no skipped or expected failure tests
- ✅ **Meaningful test coverage** of critical functionality and edge cases
- ✅ **Clear, maintainable tests** that validate actual behavior
- ✅ **Proper test organization** following project conventions
- ✅ **Fast, reliable execution** with proper test isolation
- ✅ **Integration validation** of component interactions
- ✅ **Root cause resolution** rather than test suppression

## Usage
```
/axi-test [test_pattern]
```

**Examples:**
```
/axi-test                    # Run all tests with comprehensive analysis
/axi-test tests/unit/        # Test specific directory
/axi-test -k "auth"          # Run tests matching pattern
/axi-test --coverage         # Include coverage analysis
```

Remember: Tests provide confidence that the system behaves correctly under all expected conditions. Every test should validate meaningful behavior and contribute to system reliability. Focus on fixing root causes rather than suppressing test failures.
