---
applyTo: "none"
---

# Testing Standards

### Testing Standards

#### Testing Approach

- Write tests verifying behavior, not impl
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

#### Never Skip Tests - Always Fix Root Cause

Fix env/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Systematic Approach**: 1) Discovery/Assessment, 2) Infrastructure/env, 3) Core impl, 4) Integration, 5) File Organization, 6) Framework Issues, 7) Quality/Completeness, 8) Final Validation

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually, meaningful assertions, edge case coverage.