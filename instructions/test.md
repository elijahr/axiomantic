---
applyTo: "none"
---

# Testing Standards

### Testing Standards

#### Testing Approach

- Write tests that verify behavior, not implementation
- Use appropriate testing frameworks
- Follow the testing pyramid (unit, integration, e2e)
- Maintain good test coverage

#### Test Quality

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

#### Never Skip or Disable Tests

- **🚫 NEVER SKIP OR XFAIL TESTS - ALWAYS FIX THE ROOT CAUSE 🚫** - MANDATORY RULE: If a test fails or cannot run, fix the environment, dependencies, or code - NEVER use pytest.skip(), @pytest.mark.skip(), or pytest.skipif(), @pytest.mark.xfail(), @pytest.xfail(). Skipped tests hide problems we need to solve. Failing tests show us exactly what needs to be fixed. Every skip is giving up on quality.
- **FAILING TESTS ARE BETTER THAN SKIPPED TESTS** - Failed tests provide actionable feedback and force us to improve our code. Skipped tests become technical debt that compounds over time.

#### Test Environment and Code Quality

- **If test environment is broken, fix the environment** - Install missing dependencies, fix imports, configure test fixtures properly - don't skip the test
- **If test code is wrong, fix the test code** - Update method calls, fix assertions, correct test logic - don't skip the test
- **If feature is not implemented, implement it or write TODO assertions** - Write tests that expect specific functionality and fail until implemented - don't skip the test

#### Systematic Test Fixing Approach

- **COMPREHENSIVE TEST FIXING APPROACH** - When fixing tests, follow systematic phases: 1) Test Discovery and Assessment, 2) Infrastructure and Environment Fixes, 3) Core Test Implementation Fixes, 4) Integration Test Fixes, 5) Root Test File Organization, 6) Vulkan Implementation Issues, 7) Test Quality and Completeness, 8) Final Validation and Cleanup
- **NO SHORTCUTS IN TEST FIXING** - Every failing test must be properly diagnosed and fixed. No pytest.skip(), no try/except blocks that hide real errors, no "TODO: implement this test" placeholders, no overly broad exception catching, no tests that "pass" by doing nothing

#### Test Independence and Isolation

- **TEST ISOLATION AND INDEPENDENCE** - Tests must pass individually and in any order. Fix conftest.py fixtures, ensure proper cleanup, resolve dependency issues between tests

#### Framework-Specific Requirements

- **VULKAN-SPECIFIC TEST REQUIREMENTS** - Fix tests that fail because vulkan_ops returns success codes instead of tensors. Ensure all Vulkan operations return proper torch.Tensor objects. Fix memory management and GPU compatibility issues

#### Test Validation and Success Criteria

- **TEST VALIDATION STANDARDS** - All tests must have meaningful assertions, proper error message validation, edge case coverage, and performance regression checks where appropriate. Ensure gradient support tests work correctly
- **100% PASS RATE REQUIREMENT** - Success criteria is pytest -v showing 100% pass rate with 0 skips, 0 xfails, 0 errors. All tests must run in under reasonable time with clear failure messages when things break
