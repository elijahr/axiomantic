This document uses axitxt compression: standard abbreviations, txtspeak shortcuts, emoji symbols for concepts, and omitted articles/pronouns where context is clear.

# Source Code Stds & Arch

## II. DEV STDS

### Code Stds

#### Style & Quality

- Follow establshd style guidel 4 ur lang
- Use consistnt formatting & indentation
- ✍️ self-documenting code w/ clear var names
- Avoid magic num & hardcoded vals

#### ⚡ & Maintainability

- Optimize 4 readability first, ⚡ second
- Use appropr8 data structures 4 task
- Consider memory usage & algorithmic complexity
- ✍️ modular, reusable code

#### Err Handling

- Handle errs gracefully w/ meaningful msgs
- Use lang-specific err handling patterns
- Don't suppress errs w/o good reason
- Log errs appropriately 4 🐛

#### Refactoring & Automation

- B4 writing regex fix-up scripts: 🧪 patterns on sample text first, use specific non-greedy patterns, & avoid broad exclusions like [^"] that break on legitimate content. Always include dry-run mode, preserve orig content, & valid8 syntax b4 running on all 📁.

##### Comment Cleanup 🔄

**When user requests 2 clean up comments in proj:**

1. **Extract All Comments**: ✍️ shell cmd that will find all comments & docstrings in proj (exclude .venv or other such pkg dir) & write comments 2 📁, including 📁 & line num.

2. **Analyze Each Comment**: Go over each comment & determine if it does any following:

   - **Explains change 2 code** - More CHANGELOG type comment w/in code
   - **Makes ref 2 Phases** some impl plan
   - **States obvious** - If code below or next 2 is readable & self-explanatory, we don't need comment

3. **Doc Violations**: Create doc in `.tmp/` detailing all violations

4. **Confirm w/ User**: Present analysis & get approval b4 making changes

5. **Exec Cleanup**: Start deleting bad comments in batches

#### Code Comment Stds - 🚨 ENFORCEMENT

**ABSOLUTELY FORBIDDEN comment patterns in this proj:**
- **NO dev history refs**: "Clean impl", "Replaces X lines", "Previous ver", "Updated from", "Changed 2", "✨ approach", "Rewritten", "Migrated from", "Instead of"
- **NO comparison 2 other impl**: "Unlike X", "Better than Y", "Simpler than Z", "NO X complexity", "Eliminates Y"
- **NO phase/session/time refs**: "Phase 1", "This session", "Now", "After refactoring", "During migration"
- **NO obvious code descriptions**: "Func definition", "Class declaration", "Module init", "Import statements"
- **NO benefit claims**: "No segfaults", "Automatic memory mgmt", "Stability", "⚡ improvement"

**ZERO TOLERANCE ENFORCEMENT**: Every comment violating these rules MUST be deleted immediately. These waste tokens & violate principle writing 4 devs seeing code 4 first time.

**ONLY ✍️ comments that:**
- Explain complex algorithms or business logic
- Doc why specific decisions were made (not when/how changed)
- Clarify non-obvious behavior or edge cases
- Provide context that cannot be inferred from reading code

#### Lang-Specific Patterns

- Use idiomatic constructs 4 ur lang
- Leverage lang features appropriately
- Follow establshd conventions
- Use static analysis 🛠️ when available

### Arch Design

#### Sys Design Principles

- Design 4 maintainability, extensibility & scalability
- Use appropr8 design patterns
- Plan 4 failure scenarios & 🔒 from start

#### Comp Relationships

- Define clear iface btwn comp
- Min coupling btwn modules
- Use dependency injection where appropr8
- Doc comp interactions

#### Planning & Impl

- Break down complex problems, consider non-functional req
- Follow [Planning Stds](#planning-standards) below 4 detailed planning 🔄

#### Best Practices

- Follow establshd arch patterns
- Consider ⚡ implications
- Plan 4 monitoring, observability, 🔒 & failure scenarios
- Doc arch decisions

### 🐛 Methodology

#### Systematic Approach

- Reproduce issue consistntly
- Isolate problem area
- Form hypotheses abt cause
- 🧪 hypotheses systematically

#### 📊 Collection

- Gather relevant logs & err msgs
- Doc env & conditions
- Create min 🧪 cases
- Use 🐛 🛠️ effectively

#### Root Cause Analysis

- Look beyond symptoms 2 underlying causes
- Consider multiple potenti causes
- Use scientific mthd 4 investigation
- Doc findings 4 future ref

#### Problem Resolution

- 🔧 root cause, not just symptoms
- 🧪 🔧 thoroughly
- Consider impact on other parts sys
- Update docs & 🧪 as needed

---

## III. PROJ MGMT

### Self-Valid8n Stds

#### After Every Major Impl Step

After completing any signif code change, impl, or milestone, apply [Four-Pillar Valid8n](base.md#four-pillar-validation).

#### Self-Valid8n 🔄

**4 each valid8n pillar:**
1. **Review** - Check code vs specific criteria
2. **Identify gaps** - Be brutally honest abt shortcomings
3. **🔧 immediately** - Don't postpone valid8n fixes
4. **Doc valid8n** - Note what was checked & confirmed

**Ex Self-Valid8n Comment:**

```
# Self-Valid8n Checkpoint:
# ✅ Coding Stds: Follows proj style, proper err handling
# ✅ Docs: Docstrings added, README updated
# ✅ Proj Patterns: Consistnt w/ existing svc structure
# ✅ 🧪: Unit 🧪 added, edge cases covered
```

#### When 2 Valid8

- After implementing features, refactoring, or 🐛 fixes
- B4 committing signif changes
- At completion plan milestones

### Planning Stds

All non-trivial work must be planned & documented B4 impl begins.

#### Planning 🔄

1. **Step Back & Survey**: Read relevant 📁, understand arch, identify comp, note constraints
2. **Internal Dialogue**: Question problem, approaches, risks/trade-offs, sys interactions
3. **Context-Informed Planning**: Reflect codebase patterns, infrastructure, team practices, realistic scope, apply Four-Pillar Valid8n
4. **Plan Valid8n**: Review vs codebase, check assumptions, ensure actionable/specific, consider alternatives

#### Planning Hierarchy

1. **ROADMAP.md** - Major features, signif refactoring, multi-phase proj
2. **README.md (Roadmap Section)** - Proj-level planning & feature roadmaps
3. **Temp Plan 📁** - All other planning (create `.tmp/`, ensure in `.gitignore`)

#### Plan Template

```markdown
# [Feature/Task] Impl Plan

## Overview: [Brief description what/why]

## Valid8n Integration: Stds, Docs, Patterns, 🧪 strategy

## Phases: Planning/Setup → Core Impl → Integration/🧪

## Success Criteria & Risks: [Functionality works, passes valid8n | Risk mitigation]
```

#### Plan Mgmt

**Complexity Guidel**: Simple (<1hr) = inline valid8n; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check 4 existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which 2 follow if multiple found.

**User Intent Signals**:

- "No plan"/"ignore plans" → DISABLED
- "⏸️ plan" → PAUSED
- "▶️ plan" → ACTIVE
- "Done w/ plan" → COMPLETED

**Progress Tracking**: Auto-update completion status, mark completed items, update progress indicators, ref current status in responses

### Plan Creation Guidance

4 substantial tasks w/ multiple phases, prompt user: "This looks like substantial task w/ multiple phases. Wld u like me 2 create proj plan/roadmap first 2 track our progress? This helps ensure we don't miss steps & makes easier 2 resume work l8r."

### Milestone & Commit Mgmt

**After completing signif milestones or plan phases:**

- **Self-valid8 first**: Complete all four valid8n pillars b4 considering milestone complete
- **Prompt user 2 commit**: "This completes [milestone/phase]. All valid8n pillars checked. Wld u like 2 commit these changes b4 continuing?"
- **Use conventional commit format**: `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include valid8n confirmation**: "Valid8d: stds ✅, docs ✅, patterns ✅, 🧪 ✅"
- **Break large changes into logical commits** when working thru multi-step plans

#### Commit Msg Templates

**4 valid8d milestones:**

```
feat: impl user auth sys

- Add JWT token gen & valid8n
- Create user login/logout ep
- Add password hashing w/ bcrypt
- Include comprehensive unit 🧪 (95% coverage)

Valid8d: coding stds, docs, proj patterns, 🧪
```

**4 valid8n fixes:**

```
refactor: improve code stds compliance

- 🔧 inconsistnt naming conventions
- Add missing err handling
- Update docs 4 clarity
- Ensure 🧪 coverage 4 edge cases

Self-valid8n: all four pillars verified
```
