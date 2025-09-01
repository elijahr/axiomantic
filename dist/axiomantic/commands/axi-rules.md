# /axi-rules - Dynamic Rule & Customization Mgmt

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Manage flexible customization sys w/ user rules, proj rules, & rule precedence 4: **$ARGUMENTS**

> **💡 Best Results**: Use rule hierarchy (User > Proj > Base) 2 customize Axiomantic behavior while maintaining team consistency.

## 🚨 🚨 RULE PRINCIPLES

**Rule Precedence**: User Rules override Proj Rules override Base Rules - higher precedence always wins.

**Conflict Resolution**: Most specific rule wins w/in same precedence level; explicit rules override implicit defaults.

**Team Consistency**: Project rules ensure team alignment while user rules support individual productivity preferences.

## Rule Hierarchy & Types

### Rule Precedence Order (Highest → Lowest)
1. **User Overrides** (`.axiomantic/user-overrides.md`) - Personal preferences, never committed
2. **Project Overrides** (`.axiomantic/project-overrides.md`) - Team standards, committed to repo
3. **Base Rules** - Default Axiomantic framework standards

### User Overrides (.axiomantic/user-overrides.md)
**Personal workflow processes stored locally, never committed:**
- Process overrides for individual workflow optimization
- IDE-specific integration processes
- Personal shortcuts and automation workflows
- Individual productivity process customizations

**Example Process-Oriented Structure:**
```markdown
# User Overrides (Local Only)

## Code Review Process Override
**When reviewing code before commit:**
1. Skip verbose comment checks (minimal-comment-style preference)
2. Use personal test runner: `pytest -xvs` for immediate feedback
3. Apply conventional commit format automatically

## Implementation Process Override
**When implementing new features:**
1. Start with architecture review (personal preference)
2. Write tests first, even for simple changes
3. Use snake_case for all new functions (personal consistency)
```

### Project Overrides (.axiomantic/project-overrides.md)
**Team-wide process standards committed to repository:**
- Language-specific workflow processes
- Framework-specific implementation processes
- Performance and security validation processes
- Team coordination and architecture processes

**Example Process-Oriented Structure:**
```markdown
# Project Overrides (Team-Wide)

## Implementation Process Requirements
**When implementing new features:**
1. All functions must use snake_case naming (team consistency)
2. Minimum 95% test coverage required before PR approval
3. All public APIs require docstring documentation with examples

## Code Review Process Standards
**Before approving any PR:**
1. Run full test suite: `pytest --cov=src --cov-fail-under=95`
2. Verify no hardcoded credentials or secrets
3. Confirm API documentation updated for public interface changes

## Testing Process Requirements
**When adding tests:**
1. Use pytest framework exclusively (team standard)
2. Test files must be in tests/ directory matching src/ structure
3. Integration tests required for all API endpoints
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

### Add New Override with Cross-Reference Validation
```
/axi-rules add [scope] [rule-name] [rule-value] [description]
```

**Enhanced Add Process with Cross-Referencing:**
1. **Scan existing Axiomantic rules** in axi-validate, axi-test, axi-implement, axi-feature
2. **Check for duplicates**: If rule already handled by base Axiomantic framework
3. **Check for conflicts**: If rule contradicts existing framework expectations
4. **Resolve conflicts within scope**: Remove/amend conflicting rules in same file
5. **Add process-oriented rule**: Structure as workflow process, not just expectation

**Examples with Conflict Resolution:**
```
/axi-rules add user test-coverage 85% "Personal lower threshold for rapid iteration"
# System response: "WARNING: Base Axiomantic rule requires 90% coverage. This creates USER OVERRIDE. Continue? [y/N]"

/axi-rules add project comment-style verbose "Team requires detailed comments"
# System response: "Base Axiomantic uses contextual comments. This creates PROJECT OVERRIDE affecting all team members. Continue? [y/N]"

/axi-rules add project naming-convention camelCase "Use camelCase for consistency with legacy code"
# System detects existing project rule: naming-convention snake_case
# System response: "CONFLICT: Existing project rule specifies snake_case. Replace existing rule? [y/N]"
```

### Same-File Conflict Resolution
```
/axi-rules synthesize [scope]
```

**Automatic Coherence Process:**
When adding rules that conflict with existing rules in same file:

1. **Detection**: Identify conflicting rules within same scope (user-overrides.md or project-overrides.md)
2. **User Prompt**: Show conflicts and suggest synthesis approaches
3. **Coherent Resolution**: Combine, replace, or create conditional rules for coherent result
4. **Process Update**: Restructure as workflow processes rather than conflicting declarations

**Example Synthesis:**
```
DETECTED CONFLICT in project-overrides.md:
- Existing: naming-convention = snake_case
- Adding: naming-convention = camelCase

SYNTHESIS OPTIONS:
1. Replace: Remove snake_case rule, add camelCase rule
2. Conditional: snake_case for internal functions, camelCase for public APIs
3. Cancel: Keep existing snake_case rule

RECOMMENDED PROCESS STRUCTURE:
## Naming Convention Process
**When naming functions:**
1. Use camelCase for public API functions (team decision 2025-09-01)
2. Use snake_case for internal/private functions
3. Maintain consistency within each module
```

### Cross-Reference Analysis & Conflict Prevention
```
/axi-rules analyze [proposed-rule-name] [proposed-value]
```

**Deep Analysis Process:**
1. **Base Framework Scan**: Check axi-validate standards and other commands for existing handling
2. **Conflict Detection**: Identify contradictions with base Axiomantic principles
3. **Duplicate Prevention**: Show if existing rules already handle this requirement
4. **Structure Validation**: Ensure override follows axi-validate process-oriented standards
5. **Impact Assessment**: Show which commands would be affected by this override

**Example Analysis Output:**
```
🔍 Cross-Reference Analysis: test-coverage = 85%

BASE FRAMEWORK REFERENCE:
├── axi-validate: Instruction & Command Quality Validation includes coverage validation standards
├── axi-test: Requires meaningful coverage of critical functionality (typically 90%+)
├── axi-implement: Continuous validation includes coverage requirements
└── Base Axiomantic standard: 90%+ coverage for quality gates

CONFLICT ASSESSMENT:
❌ CONFLICTS with base Axiomantic standard of 90%+ coverage
❌ May compromise Five-Pillar validation reliability

STRUCTURE VALIDATION:
⚠️  Must follow process-oriented structure from axi-validate standards

RECOMMENDATION:
⚠️  Consider project-specific rule: test-coverage-critical = 95%, test-coverage-utility = 75%
⚠️  This allows nuanced coverage while maintaining quality gates
```

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

**Override Structure Standards**: All override files must follow process-oriented standards defined in `/axi-validate` Override & Rule Definition Standards.

**Rule Categories**: Valid rule categories and validation requirements are defined in `/axi-validate` Override & Rule Definition Standards.

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

## Override Structure Standards

***Process-Oriented Requirements**: All overrides must follow the process-oriented structure defined in `/axi-validate` Override & Rule Definition Standards.

**Key Requirements from axi-validate:**
- Structured as actionable workflows with clear trigger conditions
- Step-by-step processes that coding assistants can follow
- Clear documentation of what base behavior is overridden
- Rationale provided for workflow improvements
- Concrete usage examples demonstrating the process

See `/axi-validate` Override & Rule Definition Standards for complete structural requirements and validation criteria.

## Success Criteria
- ✅ **Clear Rule Hierarchy** - User > Project > Base precedence working
- ✅ **Conflict Resolution** - Automatic handling of rule conflicts
- ✅ **Command Integration** - Rules automatically applied by all commands
- ✅ **Easy Management** - Simple add, modify, remove operations
- ✅ **Team Alignment** - Project rules ensure consistent standards
- ✅ **Personal Productivity** - User rules support individual preferences
- ✅ **Process-Oriented Structure** - Overrides follow axi-validate standards
- ✅ **Cross-Reference Validation** - Overrides validated against base framework
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
