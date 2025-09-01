# /axi-test - Comprehensive Testing Workflow

Execute comprehensive testing with intelligent failure analysis and quality assurance for: **$ARGUMENTS**

## Comprehensive Testing Framework

### Systematic Test Execution Process

**Systematic Approach**:
1. Discovery/Assessment
2. Infrastructure/Environment
3. Core Implementation
4. Integration
5. File Organization
6. Framework Issues
7. Quality/Completeness
8. Final Validation

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually, meaningful assertions, edge case coverage.

### Testing Standards Integration

#### Testing Approach
- Write tests that verify behavior, not implementation
- Use appropriate testing frameworks
- Follow the testing pyramid (unit, integration, e2e)
- Maintain good test coverage

#### Test Quality Standards
- Write clear, readable tests
- Use descriptive test names
- Test edge cases and error conditions
- Keep tests independent and isolated

#### Test-Driven Development
- Write tests before implementing features
- Use tests to guide design decisions
- Refactor with confidence when tests are in place
- Update tests when requirements change

#### Validation and Verification
- Validate inputs and outputs
- Test error handling paths
- Verify performance requirements
- Check security and accessibility

### Mandatory Test Quality Standards

#### Never Skip Tests - Always Fix Root Cause

**ZERO TOLERANCE for test skipping**: Fix environment/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Root Cause Resolution Process:**

1. **Discovery/Assessment Phase**
   - Identify all failing, skipped, or error-prone tests
   - Categorize failures by type (environment, dependency, logic, framework)
   - Assess test quality and meaningfulness
   - Map test failures to underlying root causes

2. **Infrastructure/Environment Phase**
   - Fix Python environment and dependency issues
   - Resolve import path and module discovery problems
   - Configure test environment variables and settings
   - Ensure test database and external service connectivity

3. **Core Implementation Phase**
   - Fix actual bugs in application code that cause test failures
   - Implement missing functionality that tests expect
   - Correct logic errors and edge case handling
   - Ensure implementations match test expectations

4. **Integration Phase**
   - Resolve integration between different components
   - Fix mocking and stubbing issues
   - Address timing and concurrency issues in tests
   - Ensure proper test isolation and cleanup

5. **File Organization Phase**
   - Organize test files following project conventions
   - Ensure test discovery works correctly
   - Fix import statements and module structure
   - Maintain clear test file hierarchy

6. **Framework Issues Phase**
   - Address pytest configuration and plugin issues
   - Fix test framework compatibility problems
   - Resolve parameterization and fixture issues
   - Handle test collection and execution problems

7. **Quality/Completeness Phase**
   - Enhance test coverage for edge cases
   - Improve test assertions to be more meaningful
   - Add missing test scenarios
   - Ensure tests actually validate intended behavior

8. **Final Validation Phase**
   - Run complete test suite and verify 100% pass rate
   - Confirm no skipped or expected failure tests
   - Validate test execution time and performance
   - Document any remaining testing considerations

## Systematic Test Execution

### Phase 1: Test Discovery & Assessment

**Initial Assessment:**
```bash
# Discover all tests
pytest --collect-only

# Run tests with verbose output
pytest -v

# Check for skipped/failed tests
pytest --tb=short -v
```

**Assessment Checklist:**
- How many tests exist and where are they located?
- What testing frameworks and patterns are being used?
- Are there any skipped (@pytest.mark.skip) or expected failure (@pytest.mark.xfail) tests?
- What types of test failures are occurring (import errors, assertion failures, environment issues)?
- Do tests follow project naming and organizational conventions?

### Phase 2: Test Environment Setup

**Environment Validation:**
- Verify Python environment and dependencies
- Check test configuration files (pytest.ini, conftest.py, etc.)
- Ensure test database connections and external dependencies
- Validate test-specific environment variables and settings
- Confirm proper test isolation setup

**Common Environment Issues:**
- Missing test dependencies in requirements files
- Incorrect Python path or module discovery issues
- Missing test configuration files or settings
- Database connectivity or test data setup problems
- Environment-specific variable configuration

### Phase 3: Test Framework Configuration

**Framework Setup:**
- Configure pytest settings and plugins appropriately
- Set up test fixtures and parameterization correctly
- Ensure proper test collection and discovery
- Configure test reporting and output formats
- Set up code coverage collection if required

**Common Framework Issues:**
- Pytest configuration conflicts or missing settings
- Plugin compatibility or version issues
- Fixture scope or dependency problems
- Test parameterization or data-driven test issues
- Test collection failures or discovery problems

### Phase 4: Test Quality Analysis

**Quality Assessment:**
- Do tests have meaningful assertions that validate actual behavior?
- Are edge cases and error conditions properly tested?
- Do tests follow the AAA pattern (Arrange, Act, Assert)?
- Are tests independent and properly isolated?
- Do test names clearly describe what is being tested?

**Quality Improvements:**
- Replace trivial assertions with meaningful behavioral validation
- Add comprehensive edge case testing
- Improve test readability and maintainability
- Ensure proper test data setup and cleanup
- Add integration tests for component interactions

### Phase 5: Coverage Analysis

**Coverage Evaluation:**
```bash
# Run tests with coverage reporting
pytest --cov=src --cov-report=term-missing

# Generate detailed coverage reports
pytest --cov=src --cov-report=html
```

**Coverage Analysis:**
- Identify untested code paths and functions
- Assess quality of existing test coverage
- Prioritize areas needing additional testing
- Ensure critical business logic is well-tested
- Validate error handling and edge case coverage

**Coverage Improvements:**
- Add tests for uncovered code paths
- Focus on critical business logic and edge cases
- Ensure error handling paths are tested
- Add integration tests for component interactions
- Validate boundary conditions and input validation

### Phase 6: Test Failure Resolution

**Failure Analysis Process:**

1. **Import and Environment Failures**
   - Fix missing dependencies and import paths
   - Resolve module discovery issues
   - Configure test environment properly
   - Fix database connections and external dependencies

2. **Logic and Implementation Failures**
   - Fix bugs in application code that cause test failures
   - Implement missing functionality that tests expect
   - Correct edge case handling and error conditions
   - Update implementation to match test expectations

3. **Test Framework and Configuration Failures**
   - Fix pytest configuration and plugin issues
   - Resolve fixture and parameterization problems
   - Address test collection and discovery issues
   - Fix mocking and stubbing problems

4. **Test Quality and Design Failures**
   - Improve test assertions to be more specific and meaningful
   - Fix test isolation and dependency issues
   - Address timing and concurrency problems
   - Improve test data setup and cleanup

### Phase 7: Intelligent Failure Analysis

**When tests fail, perform systematic analysis:**

1. **Categorize Failure Type**
   - Import/environment error
   - Assertion failure (logic error)
   - Framework/configuration issue
   - Test design problem

2. **Root Cause Analysis**
   - What is the test trying to validate?
   - What behavior is actually occurring vs. expected?
   - Is this a test problem or implementation problem?
   - Are there dependencies or environmental factors?

3. **Fix Strategy Selection**
   - Fix the implementation (if behavior is wrong)
   - Fix the test (if expectations are wrong)
   - Fix the environment (if setup is wrong)
   - Improve the test design (if test is poorly written)

4. **Validation**
   - Ensure fix addresses root cause, not just symptom
   - Verify test now properly validates intended behavior
   - Confirm fix doesn't break other tests
   - Run full test suite to ensure no regressions

### Phase 8: Final Validation & Quality Gates

**Final Test Suite Validation:**

```bash
# Clean environment test run
pytest -v --tb=short

# Coverage validation
pytest --cov=src --cov-report=term-missing --cov-fail-under=90

# Performance validation
pytest --durations=10
```

**Quality Gates Checklist:**
- ✅ All tests pass (100% pass rate)
- ✅ No skipped or expected failure tests
- ✅ Test coverage meets project standards (typically 90%+)
- ✅ Tests execute in reasonable time
- ✅ Test names and structure follow project conventions
- ✅ Tests validate meaningful behavior, not just code execution
- ✅ Edge cases and error conditions are properly tested
- ✅ Integration tests verify component interactions

## Test Organization & Framework Integration

### Test Structure Standards
- Follow project testing conventions and file organization
- Use consistent test naming patterns
- Organize tests by feature or module
- Maintain clear separation between unit, integration, and end-to-end tests

### Framework-Specific Considerations
- **pytest**: Leverage fixtures, parameterization, and plugins effectively
- **unittest**: Use proper test case inheritance and setUp/tearDown
- **Integration frameworks**: Ensure proper database and service mocking
- **Performance testing**: Include appropriate benchmarking and profiling

### Test Data Management
- Use fixtures for consistent test data setup
- Implement proper test isolation and cleanup
- Avoid hard-coded test data that makes tests brittle
- Use factories or builders for complex test data creation

## Success Criteria

A comprehensive test execution should achieve:
- ✅ **100% test pass rate** with no skipped or expected failure tests
- ✅ **Meaningful test coverage** of critical functionality and edge cases
- ✅ **Clear, maintainable tests** that validate actual behavior
- ✅ **Proper test organization** following project conventions
- ✅ **Fast, reliable test execution** with proper isolation
- ✅ **Integration test validation** of component interactions
- ✅ **Performance benchmarking** where appropriate
- ✅ **Root cause resolution** rather than test suppression

Remember: Tests are not just about coverage percentages - they should provide confidence that the system behaves correctly under all expected conditions. Every test should validate meaningful behavior and contribute to overall system reliability.
