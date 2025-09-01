# /axi-rules - Dynamic Rule & Customization Management

Manage flexible customization system with user rules, project rules, and rule precedence for: **$ARGUMENTS**

> **💡 Best Results**: Use rule hierarchy (User > Project > Base) to customize Axiomantic behavior while maintaining team consistency.

## 🚨 CRITICAL RULE PRINCIPLES

**Rule Precedence**: User Rules override Project Rules override Base Rules - higher precedence always wins.

**Conflict Resolution**: Most specific rule wins within same precedence level; explicit rules override implicit defaults.

**Team Consistency**: Project rules ensure team alignment while user rules support individual productivity preferences.

## Rule Hierarchy & Types

### Rule Precedence Order (Highest → Lowest)
1. **User Rules** (`.axiomantic/user-rules.md`) - Personal preferences, never committed
2. **Project Rules** (`.axiomantic/project-rules.md`) - Team standards, committed to repo
3. **Base Rules** - Default Axiomantic framework standards

### User Rules (.axiomantic/user-rules.md)
**Personal preferences stored locally, never committed:**
- Code style overrides for individual workflow
- IDE-specific configurations
- Personal shortcuts and test runners
- Individual productivity customizations

**Example:**
```markdown
# User Rules (Local Only)
- comment-style: minimal  # Override project verbose comments
- test-runner: pytest-xvs  # Personal test execution preference
- git-commit: conventional  # Personal commit format
```

### Project Rules (.axiomantic/project-rules.md)
**Team-wide standards committed to repository:**
- Language-specific style guides
- Framework-specific patterns
- Performance and security requirements
- Team conventions and architecture constraints

**Example:**
```markdown
# Project Rules (Team-Wide)
- naming-convention: snake_case  # All functions use snake_case
- test-coverage: 95%  # Minimum coverage requirement
- api-doc-required: true  # All public APIs need docs
```

## Rule Management Commands

### View Active Rules
```
/axi-rules view [category]
```

**Categories**: `all`, `user`, `project`, `base`, `conflicts`

**Output Example:**
```
📋 Active Rules:

🔴 USER OVERRIDE: comment-style = minimal
   (overrides PROJECT: comment-style = detailed)

🟡 PROJECT RULE: test-coverage = 95%
   (overrides BASE: test-coverage = 90%)

🟢 BASE RULE: code-style = follow-language-conventions
   (active - no overrides)
```

### Add New Rule
```
/axi-rules add [scope] [rule-name] [rule-value] [description]
```

**Examples:**
```
/axi-rules add user comment-style minimal "Prefer minimal comments"
/axi-rules add project test-timeout 30s "All tests must complete in 30s"
```

### Modify Existing Rule
```
/axi-rules modify [scope] [rule-name] [new-value] [reason]
```

### Remove Rule
```
/axi-rules remove [scope] [rule-name] [reason]
```

### Analyze Conflicts
```
/axi-rules conflicts
```

Shows all rule conflicts and resolution:
```
🔍 Rule Conflict Analysis:

CONFLICT: comment-style
├── USER: minimal (ACTIVE - highest precedence)
├── PROJECT: detailed (OVERRIDDEN)
└── BASE: contextual (OVERRIDDEN)
```

## Rule Categories & Standards

### Code Quality Rules
- `code-style`: Formatting and style preferences
- `naming-convention`: Variable, function, class naming
- `comment-style`: Comment verbosity and style
- `error-handling`: Error handling patterns
- `performance-standards`: Performance requirements

### Testing Rules
- `test-coverage`: Minimum code coverage percentage
- `test-runner`: Preferred test execution tool
- `test-timeout`: Maximum test execution time
- `test-patterns`: Test file naming and organization

### Documentation Rules
- `doc-style`: Documentation format and verbosity
- `api-doc-required`: API documentation requirements
- `readme-format`: README structure standards
- `comment-requirements`: When comments are required

### Process Rules
- `commit-format`: Git commit message format
- `branch-naming`: Git branch naming conventions
- `review-requirements`: Code review standards

## Integration with Other Commands

### Rule-Aware Command Execution
All Axiomantic commands automatically apply active rules:

**`/axi-validate` integration:**
```markdown
Applying active rules for validation:
- USER: comment-style = minimal
- PROJECT: test-coverage = 95%
- PROJECT: naming-convention = snake_case

Validation Results:
✅ Comment style: Following minimal preference
❌ Test coverage: 87% (below project requirement of 95%)
✅ Naming: All functions use snake_case
```

### Rule Override Syntax
Temporarily override rules for specific commands:
```
/axi-validate --override comment-style=detailed --override test-coverage=85%
/axi-feature --ignore-rule performance-standards
```

## Rule Discovery & Suggestions

### Smart Rule Suggestions
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
- Test files use both pytest and unittest
- SUGGEST: Add project rule 'test-framework = pytest'
```

### Rule Templates
```
/axi-rules template [project-type]
```

Generate rule templates for common project types:
- `web-api` - API-specific rules
- `data-science` - DS-specific rules
- `mobile-app` - Mobile development rules

## Rule Validation & Quality

### Rule Consistency Checking
```
/axi-rules validate
```

**Validates:**
- Rule syntax and format correctness
- No circular rule dependencies
- Rule values match expected types
- Required rules not overridden inappropriately

### Rule Application Testing
```
/axi-rules test [rule-name] [test-case]
```

**Example:**
```
/axi-rules test naming-convention "function addTwoNumbers"
# Output: "Rule 'naming-convention=snake_case' violation: Use 'add_two_numbers'"
```

## Advanced Features

### Rule Documentation Generation
```
/axi-rules docs
```

Generates comprehensive documentation of all active project rules for team reference.

### Rule Export/Import
```
/axi-rules export project-rules.yaml
/axi-rules import team-standards.yaml
```

### Rule Metrics & Analytics
```
/axi-rules metrics
```

Shows rule effectiveness and usage:
```
📊 Rule Metrics (Last 30 days):

MOST TRIGGERED RULES:
1. naming-convention: 47 violations fixed
2. test-coverage: 23 violations fixed

RULE EFFECTIVENESS:
- comment-style=minimal: 23% fewer comment-related reviews
- test-coverage=95%: 0 production bugs from untested code
```

## Rule Definition Structure

```markdown
### [rule-name]
**Value**: [rule-value]
**Scope**: [user|project|base]
**Priority**: [high|medium|low]
**Description**: [clear purpose description]
**Examples**: [concrete usage examples]
**Exceptions**: [when rule might not apply]
```

## Success Criteria
- ✅ **Clear Rule Hierarchy** - User > Project > Base precedence working
- ✅ **Conflict Resolution** - Automatic handling of rule conflicts
- ✅ **Command Integration** - Rules automatically applied by all commands
- ✅ **Easy Management** - Simple add, modify, remove operations
- ✅ **Team Alignment** - Project rules ensure consistent standards
- ✅ **Personal Productivity** - User rules support individual preferences
- ✅ **Clear Documentation** - Rule purpose and rationale documented
- ✅ **Effectiveness Tracking** - Rule metrics show value and usage

## Usage
```
/axi-rules [action] [parameters]
```

**Examples:**
```
/axi-rules view all                    # Show all active rules
/axi-rules add project test-coverage 95%  # Add new project rule
/axi-rules conflicts                   # Show rule conflicts
/axi-rules suggest                     # Get rule suggestions
```

Remember: Rules should enhance productivity and quality, not create bureaucratic overhead. Focus on rules that solve real problems and eliminate development inconsistencies.
