# /axi-rules - Dynamic Rule & Customization Mgmt

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Manage flexible customization sys w/ user rules, proj rules, & rule precedence 4: **$ARGUMENTS**

## ⚙️ Dynamic Rule Mgmt Sys

### Rule Hierarchy & Precedence

**Rule Precedence Order (highest → lowest):**
1. **User Rules** - Personal preferences stored locally (not committed)
2. **📋 Project Rules** - Team-wide rules committed 2 repo
3. **Base Rules** - Default Axiomantic fwk rules

**Conflict Resolution:**
- Higher precedence rules override lower precedence rules
- Within same precedence level, most specific rule wins
- Explicit rules override implicit defaults
- Later rules in same file override earlier rules

### Rule Types & Categories

#### 1. User Rules (.axiomantic/user-rules.md)
**Personal preferences stored locally, never committed:**

```markdown
# User Rules (Local Only - Not Committed)

## Personal Preferences
- Code style overrides for personal workflow
- IDE-specific configs
- Local dev env settings
- Personal shortcuts & aliases
- Individual productivity customizations

## Override Examples
- comment-style: minimal  # Override project verbose comments
- test-runner: pytest-xvs  # Personal test execution preference
- git-commit: conventional  # Personal commit message format
```

#### 2. Project Rules (.axiomantic/project-rules.md)
**Team-wide rules committed to repository:**

```markdown
# Project Rules (Team-Wide - Committed)

## Project Standards
- Language-specific style guides
- Framework-specific patterns
- Performance req
- Security standards
- Documentation req

## Team Conventions
- Naming conventions specific to this project
- Architecture patterns & constraints
- Testing strategies & coverage req
- Deployment & CI/CD standards
```

#### 3. Base Rules (Built-in Framework)
**Default Axiomantic standards from shared/*.md files:**
- Four-Pillar Validation standards
- Core coding standards
- Documentation principles
- Testing guidelines

### Rule Management Commands

#### View Current Rules
```
/axi-rules view [category]
```

**Categories:**
- `all` - Show all active rules w/ precedence indicators
- `user` - Show only user-specific rules
- `project` - Show only project-specific rules
- `base` - Show only base Axiomantic rules
- `conflicts` - Show rules that are overridden by higher precedence

**Output Format:**
```
📋 Active Rules for [category]:

🔴 USER OVERRIDE: comment-style = minimal
   (overrides PROJECT: comment-style = detailed)

🟡 PROJECT RULE: test-coverage = 95%
   (overrides BASE: test-coverage = 90%)

🟢 BASE RULE: code-style = follow-language-conventions
   (active - no overrides)
```

#### Add New Rule
```
/axi-rules add [scope] [rule-name] [rule-value] [description]
```

**Examples:**
```
/axi-rules add user comment-style minimal "Prefer minimal comments for personal workflow"
/axi-rules add project test-timeout 30s "All tests must complete within 30 seconds"
/axi-rules add project naming-convention snake_case "Use snake_case for all function names"
```

#### Modify Existing Rule
```
/axi-rules modify [scope] [rule-name] [new-value] [reason]
```

**Examples:**
```
/axi-rules modify user test-runner pytest-verbose "Need more detailed test output"
/axi-rules modify project test-coverage 98% "Increasing quality standards"
```

#### Remove Rule
```
/axi-rules remove [scope] [rule-name] [reason]
```

**Examples:**
```
/axi-rules remove user comment-style "Reverting to project standards"
/axi-rules remove project custom-linter "Linter no longer maintained"
```

#### Rule Conflict Analysis
```
/axi-rules conflicts
```

Shows all rule conflicts & their resolution:
```
🔍 Rule Conflict Analysis:

CONFLICT: comment-style
├── USER: minimal (ACTIVE - highest precedence)
├── PROJECT: detailed (OVERRIDDEN)
└── BASE: contextual (OVERRIDDEN)

CONFLICT: test-coverage
├── PROJECT: 95% (ACTIVE - overrides base)
└── BASE: 90% (OVERRIDDEN)

NO CONFLICTS: 47 rules
```

### Rule Definition Standards

#### Rule Structure
```markdown
## Rule Category

### [rule-name]
**Value**: [rule-value]
**Scope**: [user|project|base]
**Priority**: [high|medium|low]
**Description**: [clear description of rule purpose]
**Rationale**: [why this rule exists]
**Examples**: [concrete examples of rule app]
**Exceptions**: [when this rule might not apply]
```

#### Rule Categories

**Code Quality Rules:**
- `code-style`: Formatting & style preferences
- `naming-convention`: Variable, function, class naming
- `comment-style`: Comment verbosity & style
- `error-handling`: Error handling patterns
- `perf-standards`: Performance req

**Testing Rules:**
- `test-coverage`: Minimum code coverage percentage
- `test-runner`: Preferred test execution tool
- `test-timeout`: Maximum test execution time
- `test-patterns`: Test file naming & organization
- `mock-strategy`: Mocking & stubbing preferences

**Documentation Rules:**
- `doc-style`: Documentation format & verbosity
- `api-doc-required`: API docs req
- `readme-format`: README structure standards
- `comment-req`: When comments are required

**Process Rules:**
- `commit-format`: Git commit message format
- `branch-naming`: Git branch naming conventions
- `review-req`: Code review standards
- `deployment-process`: Deployment & release process

**Architecture Rules:**
- `design-patterns`: Preferred architectural patterns
- `dependency-mgmt`: Dependency guidelines
- `file-organization`: Project structure standards
- `interface-design`: API & interface guidelines

### Rule Validation & Enforcement

#### Rule Consistency Checking
```
/axi-rules validate
```

**Validates:**
- Rule syntax & format correctness
- No circular rule dependencies
- Rule values match expected types/formats
- Required rules are not overridden inappropriately

#### Rule Application Testing
```
/axi-rules test [rule-name] [test-case]
```

**Test rule app:**
```
/axi-rules test comment-style "function add(a, b) { return a + b; }"
# Output: "Rule 'comment-style=minimal' suggests: No comment needed - function is self-explanatory"

/axi-rules test naming-convention "function addTwoNumbers"
# Output: "Rule 'naming-convention=snake_case' violation: Use 'add_two_numbers'"
```

### Integration w/ Other Commands

#### Rule-Aware Command Execution

All Axiomantic commands automatically apply active rules:

**`/axi-validate`** integration:
```markdown
Applying active rules for valid8n:
- USER: comment-style = minimal
- PROJECT: test-coverage = 95%
- PROJECT: naming-convention = snake_case

Validation Results:
✅ Comment style: Following minimal comment preference
❌ Test coverage: 87% (below project requirement of 95%)
✅ Naming: All functions use snake_case convention
```

**`/axi-feature`** integration:
```markdown
Feature planning w/ active project rules:
- Architecture pattern: microservices (PROJECT RULE)
- Testing strategy: TDD w/ 95% coverage (PROJECT RULE)
- Documentation: API docs required (PROJECT RULE)
- Performance: <100ms response time (PROJECT RULE)
```

#### Rule Override Syntax

Temporarily override rules for specific commands:
```
/axi-validate --override comment-style=detailed --override test-coverage=85%
/axi-feature --ignore-rule perf-standards
/axi-compress --override compression-level=aggressive
```

### Rule Discovery & Suggestions

#### Smart Rule Suggestions
```
/axi-rules suggest
```

**Based on codebase analysis:**
```
💡 Suggested Rules Based on Project Analysis:

DETECTED PATTERN:
- 95% of functions use snake_case naming
- SUGGEST: Add project rule 'naming-convention = snake_case'

DETECTED INCONSISTENCY:
- Test files use both pytest & unittest
- SUGGEST: Add project rule 'test-framework = pytest' for consistency

PERFORMANCE OPPORTUNITY:
- Database queries average 2.3s response time
- SUGGEST: Add project rule 'db-query-timeout = 1s'
```

#### Rule Templates
```
/axi-rules template [project-type]
```

**Generate rule templates for common project types:**
```
/axi-rules template web-api
# Generates template w/ API-specific rules

/axi-rules template data-science
# Generates template w/ DS-specific rules

/axi-rules template mobile-app
# Generates template w/ mobile dev rules
```

### Rule Documentation & Sharing

#### Rule Export/Import
```
/axi-rules export project-rules.yaml
/axi-rules import team-standards.yaml
```

#### Rule Documentation Generation
```
/axi-rules docs
```

Generates comprehensive rule docs:
```markdown
# Project Rules Documentation

## Code Quality Standards
Based on active project rules, this project enforces:
- Snake_case naming for all functions & variables
- Minimal comments (only for complex business logic)
- 95% test coverage minimum
- All tests must complete within 30 seconds

## Validation Process
The following rules are automatically checked by /axi-validate:
[Generated from active rules...]
```

### Advanced Rule Features

#### Conditional Rules
```markdown
### perf-testing
**Condition**: file-size > 1MB OR complexity > 100
**Value**: required
**Description**: Performance testing required for large or complex files
```

#### Rule Dependencies
```markdown
### api-docs
**Value**: required
**Depends-on**: public-interface = true
**Description**: API docs required only for public interfaces
```

#### Rule Metrics & Analytics
```
/axi-rules metrics
```

Shows rule effectiveness & usage:
```
📊 Rule Metrics (Last 30 days):

MOST TRIGGERED RULES:
1. naming-convention: 47 violations fixed
2. test-coverage: 23 violations fixed
3. comment-style: 18 apps

RULE EFFECTIVENESS:
- comment-style=minimal: 23% fewer comment-related reviews
- test-coverage=95%: 0 production bugs related to untested code
- naming-convention: 15% faster code reviews

SUGGESTED OPTIMIZATIONS:
- Consider raising test-coverage to 98% (current success rate: 100%)
- Consider adding perf-benchmark rule (3 recent perf issues)
```

## Success Criteria

Effective rule mgmt should achieve:
- ✅ **Clear Rule Hierarchy** - User > Project > Base precedence
- ✅ **Conflict Resolution** - Automatic handling of rule conflicts
- ✅ **Integration** - Rules automatically applied by all commands
- ✅ **Flexibility** - Easy to add, modify, remove rules
- ✅ **Team Alignment** - Project rules ensure consistent team standards
- ✅ **Personal Productivity** - User rules support individual preferences
- ✅ **Documentation** - Clear rule docs & rationale
- ✅ **Validation** - Rule consistency & effectiveness tracking

Remember: Rules should enhance productivity & quality, not create bureaucratic overhead. Focus on rules that solve real problems & eliminate inconsistencies in the dev process.
