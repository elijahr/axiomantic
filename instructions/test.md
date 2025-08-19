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

#### 🚫 NEVER SKIP TESTS - ALWAYS FIX ROOT CAUSE 🚫

**MANDATORY**: Fix environment/dependencies/code - NEVER use pytest.skip(), @pytest.mark.skip/xfail().

- Skipped tests hide problems, failing tests show what needs fixing
- Environment broken? Fix it. Test code wrong? Fix it. Feature missing? Implement or write TODO assertions

#### Systematic Test Fixing Approach

**COMPREHENSIVE APPROACH** - Follow phases: 1) Discovery/Assessment, 2) Infrastructure/Environment, 3) Core Implementation, 4) Integration, 5) File Organization, 6) Framework Issues, 7) Quality/Completeness, 8) Final Validation

**NO SHORTCUTS** - Every failing test properly diagnosed and fixed. No pytest.skip(), no error-hiding try/except, no "TODO" placeholders, no overly broad catching, no tests that "pass" by doing nothing

#### Test Requirements

- **Independence**: Tests pass individually and in any order. Fix conftest.py fixtures, ensure cleanup, resolve dependencies
- **Framework-Specific**: Fix tests failing because operations return success codes instead of expected objects. Ensure proper object returns, memory management, compatibility
- **Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Meaningful assertions, error validation, edge case coverage, performance checks where appropriate
