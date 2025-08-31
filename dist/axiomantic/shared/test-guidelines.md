
This document uses axitxt compression: standard abbreviations, txtspeak shortcuts, emoji symbols for concepts, and omitted articles/pronouns where context is clear.

# 🧪 Stds

#### Testing Approach

- ✍️ 🧪 that verify behavior, not impl
- Use appropr8 testing fwk
- Follow testing pyramid (unit, integration, e2e)
- Maintain good 🧪 coverage

#### Test Quality

- ✍️ clear, readable 🧪
- Use descriptive 🧪 names
- 🧪 edge cases & err conditions
- Keep 🧪 independent & isolated

#### Test-Driven Dev

- ✍️ 🧪 b4 implementing features
- Use 🧪 2 guide design decisions
- Refactor w/ confidence when 🧪 r in place
- Update 🧪 when req change

#### Valid8n & Verification

- Valid8 inputs & outputs
- 🧪 err handling paths
- Verify ⚡ req
- Check 🔒 & accessibility

### 🚨 Test Quality Stds

#### Never Skip 🧪 - Always 🔧 Root Cause

🔧 env/dependencies/code - don't use pytest.skip(), @pytest.mark.skip/xfail().

**Systematic Approach**: 1) Discovery/Assessment, 2) Infrastructure/Env, 3) Core Impl, 4) Integration, 5) 📁 Organization, 6) Fwk Issues, 7) Quality/Completeness, 8) Final Valid8n

**Success Criteria**: pytest -v showing 100% pass rate, 0 skips/xfails/errs. 🧪 pass individually, meaningful assertions, edge case coverage.
