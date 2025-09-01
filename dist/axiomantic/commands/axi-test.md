This doc uses axitxt compression: std abbreviations, txtspeak shortcuts, emoji symbols 4 concepts, & omitted articles/pronouns where context clear.
# /axi-test - Comprehensive Testing Workflow

Execute comprehensive testing w/ intelligent failure analysis & quality assurance for: **$ARGUMENTS**

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
- Write tests that verify behavior, not impl
- Use appropriate testing frameworks
- Follow the testing pyramid (unit, integration, e2e)
- Maintain good test coverage

#### Test Quality Standards
- Write clear, readable tests
- Use descriptive test names
- Test edge cases & error conditions
- Keep tests independent & isolated

#### Test-Driven Development
- Write tests before implementing features
- Use tests to guide design decisions
- Refactor w/ confidence when tests are in place
- Update tests when req change

#### Validation & Verification
- Validate inputs & outputs
- Test error handling paths
- Verify perf req
- Check security & accessibility

### Mandatory Test Quality Standards

#### Never Skip Tests - Always Fix Root Cause

**ZERO TOLERANCE for test skipping**: Fix env/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Root Cause Resolution Process:**

1. **Discovery/Assessment Phase**
   - Identify all failing, skipped, or error-prone tests
   - Categorize failures by type (env, dependency, logic, framework)
   - Assess test quality & meaningfulness
   - Map test failures to underlying root causes

2. **Infrastructure/Environment Phase**
   - Fix Python env & dependency issues
   - Resolve import path & module discovery problems
   - Configure test env variables & settings
   - Ensure test database & external service connectivity

3. **Core Implementation Phase**
   - Fix actual bugs in app code that cause test failures
   - Implement missing functionality that tests expect
   - Correct logic errors & edge case handling
   - Ensure impls match test expectations

4. **Integration Phase**
   - Resolve integration between different components
   - Fix mocking & stubbing issues
   - Address timing & concurrency issues in tests
   - Ensure proper test isolation & cleanup

5. **File Organization Phase**
   - Organize test files following project conventions
   - Ensure test discovery works correctly
   - Fix import statements & module structure
   - Maintain clear test file hierarchy

6. **Framework Issues Phase**
   - Address pytest config & plugin issues
   - Fix test framework compatibility problems
   - Resolve parameterization & fixture issues
   - Handle test collection & execution problems

7. **Quality/Completeness Phase**
   - Enhance test coverage for edge cases
   - Improve test assertions to be more meaningful
   - Add missing test scenarios
   - Ensure tests actually validate intended behavior

8. **Final Validation Phase**
   - Run complete test suite & verify 100% pass rate
   - Confirm no skipped or expected failure tests
   - Validate test execution time & perf
   - Document any remaining testing considerations

## Systematic Test Execution

### Phase 1: Test Discovery & Assessment

**Initial Assessment:**
```bash
# Discover all tests
pytest --collect-only

# Run tests w/ verbose output
pytest -v

# Check for skipped/failed tests
pytest --tb=short -v
```

**Assessment Checklist:**
- How many tests exist & where are they located?
- What testing frameworks & patterns are being used?
- Are there any skipped (@pytest.mark.skip) or expected failure (@pytest.mark.xfail) tests?
- What types of test failures are occurring (import errors, assertion failures, env issues)?
- Do tests follow project naming & organizational conventions?

### Phase 2: Test Environment Setup

**Environment Validation:**
- Verify Python env & dependencies
- Check test config files (pytest.ini, conftest.py, etc.)
- Ensure test database connections & external dependencies
- Validate test-specific env variables & settings
- Confirm proper test isolation setup

**Common Environment Issues:**
- Missing test dependencies in req files
- Incorrect Python path or module discovery issues  
- Missing test config files or settings
- Database connectivity or test data setup problems
- Environment-specific variable config

### Phase 3: Test Framework Configuration

**Framework Setup:**
- Configure pytest settings & plugins appropriately
- Set up test fixtures & parameterization correctly
- Ensure proper test collection & discovery
- Configure test reporting & output formats
- Set up code coverage collection if required

**Common Framework Issues:**
- Pytest config conflicts or missing settings
- Plugin compatibility or version issues
- Fixture scope or dependency problems
- Test parameterization or data-driven test issues
- Test collection failures or discovery problems

### Phase 4: Test Quality Analysis

**Quality Assessment:**
- Do tests have meaningful assertions that validate actual behavior?
- Are edge cases & error conditions properly tested?
- Do tests follow the AAA pattern (Arrange, Act, Assert)?
- Are tests independent & properly isolated?
- Do test names clearly describe what is being tested?

**Quality Improvements:**
- Replace trivial assertions w/ meaningful behavioral valid8n
- Add comprehensive edge case testing
- Improve test readability & maintainability
- Ensure proper test data setup & cleanup
- Add integration tests for component interactions

### Phase 5: Coverage Analysis

**Coverage Evaluation:**
```bash
# Run tests w/ coverage reporting
pytest --cov=src --cov-report=term-missing

# Generate detailed coverage reports
pytest --cov=src --cov-report=html
```

**Coverage Analysis:**
- Identify untested code paths & functions
- Assess quality of existing test coverage
- Prioritize areas needing additional testing
- Ensure critical business logic is well-tested
- Validate error handling & edge case coverage

**Coverage Improvements:**
- Add tests for uncovered code paths
- Focus on critical business logic & edge cases
- Ensure error handling paths are tested
- Add integration tests for component interactions
- Validate boundary conditions & input valid8n

### Phase 6: Test Failure Resolution

**Failure Analysis Process:**

1. **Import & Environment Failures**
   - Fix missing dependencies & import paths
   - Resolve module discovery issues
   - Configure test env properly
   - Fix database connections & external dependencies

2. **Logic & Implementation Failures**
   - Fix bugs in app code that cause test failures
   - Implement missing functionality that tests expect
   - Correct edge case handling & error conditions
   - Update impl to match test expectations

3. **Test Framework & Configuration Failures**
   - Fix pytest config & plugin issues
   - Resolve fixture & parameterization problems
   - Address test collection & discovery issues
   - Fix mocking & stubbing problems

4. **Test Quality & Design Failures**
   - Improve test assertions to be more specific & meaningful
   - Fix test isolation & dependency issues
   - Address timing & concurrency problems
   - Improve test data setup & cleanup

### Phase 7: Intelligent Failure Analysis

**When tests fail, perform systematic analysis:**

1. **Categorize Failure Type**
   - Import/env error
   - Assertion failure (logic error)
   - Framework/config issue
   - Test design problem

2. **Root Cause Analysis**
   - What is the test trying to validate?
   - What behavior is actually occurring vs. expected?
   - Is this a test problem or impl problem?
   - Are there dependencies or enval factors?

3. **Fix Strategy Selection**
   - Fix the impl (if behavior is wrong)
   - Fix the test (if expectations are wrong)  
   - Fix the env (if setup is wrong)
   - Improve the test design (if test is poorly written)

4. **Validation**
   - Ensure fix addresses root cause, not just symptom
   - Verify test now properly validates intended behavior
   - Confirm fix doesn't break other tests
   - Run full test suite to ensure no regressions

### Phase 8: Final Validation & Quality Gates

**Final Test Suite Validation:**

```bash
# Clean env test run
pytest -v --tb=short

# Coverage valid8n
pytest --cov=src --cov-report=term-missing --cov-fail-under=90

# Performance valid8n  
pytest --durations=10
```

**Quality Gates Checklist:**
- ✅ All tests pass (100% pass rate)
- ✅ No skipped or expected failure tests
- ✅ Test coverage meets project standards (typically 90%+)
- ✅ Tests execute in reasonable time
- ✅ Test names & structure follow project conventions
- ✅ Tests validate meaningful behavior, not just code execution
- ✅ Edge cases & error conditions are properly tested
- ✅ Integration tests verify component interactions

## Test Organization & Framework Integration

### Test Structure Standards
- Follow project testing conventions & file organization
- Use consistent test naming patterns
- Organize tests by feature or module
- Maintain clear separation between unit, integration, & end-to-end tests

### Framework-Specific Considerations
- **pytest**: Leverage fixtures, parameterization, & plugins effectively
- **unittest**: Use proper test case inheritance & setUp/tearDown
- **Integration frameworks**: Ensure proper database & service mocking
- **Performance testing**: Include appropriate benchmarking & profiling

### Test Data Management
- Use fixtures for consistent test data setup
- Implement proper test isolation & cleanup
- Avoid hard-coded test data that makes tests brittle
- Use factories or builders for complex test data creation

## Success Criteria

A comprehensive test execution should achieve:
- ✅ **100% test pass rate** w/ no skipped or expected failure tests
- ✅ **Meaningful test coverage** of critical functionality & edge cases
- ✅ **Clear, maintainable tests** that validate actual behavior
- ✅ **Proper test organization** following project conventions
- ✅ **Fast, reliable test execution** w/ proper isolation
- ✅ **Integration test valid8n** of component interactions
- ✅ **Performance benchmarking** where appropriate
- ✅ **Root cause resolution** rather than test suppression

Remember: Tests are not just about coverage percentages - they should provide confidence that the system behaves correctly under all expected conditions. Every test should validate meaningful behavior & contribute to overall system reliability.