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

#### Never Skip Tests - Always Fix Root Cause

Fix environment/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Systematic Approach**: 1) Discovery/Assessment, 2) Infrastructure/Environment, 3) Core Implementation, 4) Integration, 5) File Organization, 6) Framework Issues, 7) Quality/Completeness, 8) Final Validation

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errors. Tests pass individually, meaningful assertions, edge case coverage.
