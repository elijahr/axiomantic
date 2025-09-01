
# Testing Standards

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

#### Zero Tolerance Policy
- Fix environment/dependencies/code - never use pytest.skip(), @pytest.mark.skip/xfail()
- Always fix root cause, not symptoms
- Target: 100% pass rate with meaningful assertions
