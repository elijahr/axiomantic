# AxiTxt Test Suite

## Overview
This directory contains the AxiTxt compression system test suite. Tests validate compression performance, quality, and consistency across different content types.

## Test Files

### Core Tests
- `test-simple.md` - Basic compression features (articles, pronouns, abbreviations)
- `test-technical.md` - Technical documentation with complex terminology
- `test-instructional.md` - Step-by-step instructions and procedures
- `test-conversational.md` - Dialogue and conversational content

### Advanced Tests  
- `test-edge-cases.md` - Boundary conditions and edge cases
- `test-mixed-content.md` - Mixed content types in single document
- `test-long-document.md` - Scalability test with extensive content

## Running Tests

### Manual Test Execution
1. For each test file in `/tests/`, apply AxiTxt compression using the `/axitxt` prompt in VS Code chat
2. Create compressed version with `.axitxt` extension
3. Calculate token reduction percentage
4. Verify quality using the validation criteria
5. Update `BENCHMARKS.md` with results

### Test Commands
```bash
# Run all tests and update benchmarks
npm run test  # (if we implement automation later)

# Run specific test
npm run test:simple
npm run test:technical
```

### Quality Validation Criteria
For each test, verify:
✅ Core meaning preserved  
✅ No ambiguous abbreviations  
✅ Context sufficient for LLM interpretation  
✅ Token reduction achieved (target: 35-50%)  
✅ Technical accuracy maintained  
✅ Actionable instructions clear  

## Benchmark Tracking
Results are logged in `BENCHMARKS.md` with:
- Date/time of test run
- Token reduction percentage for each test
- Overall performance trends
- Quality assessment notes

## Test Development
When adding new tests:
1. Create both `.md` (original) and `.axitxt` (compressed) versions
2. Include complexity rating (Simple/Medium/Complex)
3. Document expected compression target
4. Add quality validation notes