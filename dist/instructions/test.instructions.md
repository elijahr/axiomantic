---
applyTo: "none"
---

# Testing Standards

### Testing Standards

#### Testing Approach

- Write tests that verify behavior, not impl
- Use appropriate testing frameworks
- Follow testing pyramid (unit, integration, e2e)
- Maintain good test coverage

#### Test Quality

- Write clear, readable tests
- Use descriptive test names
- Test edge cases & error conditions
- Keep tests independent & isolated

#### Test-Driven Dev

- Write tests before implementing features
- Use tests to guide design decisions
- Refactor w/ confidence when tests are in place
- Update tests when req change

#### Validation & Verification

- Validate inputs & outputs
- Test error handling paths
- Verify performance req
- Check security & accessibility

### Mandatory Test Quality Standards

#### Never Skip | Disable Tests

- **🚫 NEVER SKIP | XFAIL TESTS - ALWAYS FIX ROOT CAUSE 🚫** - MANDATORY RULE: If test fails | cannot run, fix env, dependencies, | code - NEVER use pytest.skip(), @pytest.mark.skip(), | pytest.skipif(), @pytest.mark.xfail(), @pytest.xfail(). Skipped tests hide problems we need to solve. Failing tests show us exactly what needs to be fixed. Every skip is giving up on quality.
- **FAILING TESTS > SKIPPED TESTS** - Failed tests provide actionable feedback & force us to improve our code. Skipped tests become technical debt that compounds over time.

#### Test Env & Code Quality

- **If test env is broken, fix env** - Install missing dependencies, fix imports, config test fixtures properly - don't skip test
- **If test code is wrong, fix test code** - Update method calls, fix assertions, correct test logic - don't skip test
- **If feature !implemented, impl it | write TODO assertions** - Write tests that expect specific functionality & fail until implemented - don't skip test

#### Systematic Test Fixing Approach

- **COMPREHENSIVE TEST FIXING APPROACH** - When fixing tests, follow systematic phases: 1) Test Discovery & Assessment, 2) Infrastructure & Env Fixes, 3) Core Test Impl Fixes, 4) Integration Test Fixes, 5) Root Test File Org, 6) Vulkan Impl Issues, 7) Test Quality & Completeness, 8) Final Validation & Cleanup
- **NO SHORTCUTS IN TEST FIXING** - Every failing test must be properly diagnosed & fixed. No pytest.skip(), no try/except blocks that hide real errors, no "TODO: impl this test" placeholders, no overly broad exception catching, no tests that "pass" by doing nothing

#### Test Independence & Isolation

- **TEST ISOLATION & INDEPENDENCE** - Tests must pass individually & in any order. Fix conftest.py fixtures, ensure proper cleanup, resolve dependency issues between tests

#### Framework-Specific Req

- **VULKAN-SPECIFIC TEST REQ** - Fix tests that fail b/c vulkan_ops returns success codes instead of tensors. Ensure all Vulkan operations return proper torch.Tensor objects. Fix memory mgmt & GPU compatibility issues

#### Test Validation & Success Criteria

- **TEST VALIDATION STANDARDS** - All tests must have meaningful assertions, proper error message validation, edge case coverage, & performance regression checks where appropriate. Ensure gradient support tests work correctly
- **100% PASS RATE REQ** - Success criteria is pytest -v showing 100% pass rate w/ 0 skips, 0 xfails, 0 errors. All tests must run in under reasonable time w/ clear failure messages when things break