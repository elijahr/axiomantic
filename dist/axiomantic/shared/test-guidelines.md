
# 🧪 Testing Standards

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

#### Testing Approach
- Write tests that verify behavior, not impl
- Use appropr8 testing fwks
- Follow testing pyramid (unit, integration, e2e)
- Maintain good test coverage

#### 🔍 Test Quality
- Write clear, readable tests
- Use descriptive test names
- Test edge cases & err conditions
- Keep tests independent & isolated

#### Test-Driven Dev
- Write tests b4 implementing features
- Use tests 2 guide design decisions
- Refactor w/ confidence when tests in place
- Update tests when req change

#### ✅ Valid8n & Verification
- Valid8 inputs & outputs
- Test err handling paths
- Verify perf req
- Check 🔒 sec & accessibility

#### 🚨 Zero Tolerance Policy
- Fix env/dependencies/code - never use pytest.skip(), @pytest.mark.skip/xfail()
- Always fix root cause, not symptoms
- 🎯 Target: 100% pass rate w/ meaningful assertions
