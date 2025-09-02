# /axi-implement - Complete Development Workflow

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Execute comp dev workflow w/ plan integ, TDD approach, & systematic debugging 4: **$ARGUMENTS**

> **💡 Best Results**: Always discover & analyze existing plans before starting impl 2 ensure coordd dev.

## 🚨 🚨 WORKFLOW PRINCIPLES

**Plan-First Dev**: Never start implementing w/o identifying plan & work item 2 ensure progress tracking & coord.

**Systematic Debugging**: When issues arise, use 6-step scientific debugging methodology rather than trial-&-error approaches.

**🎯 Gates**: Apply Five-Pillar valid8n before marking any work item comp - no exceptions.

## Dev Workflow 🔄

### Phase 1: Plan Discovery & Work Item Selection

**Step 1: Plan Doc Discovery (Priority Order)**
1. `ROADMAP.md` - Major feat & multi-phase proj
2. `PROJECT_PLAN.md` - Proj-spec planning docs
3. `README.md` (Roadmap sect) - Proj-level planning
4. `TODO.md` - Task lists & quick items
5. `.tmp/*.md` - Temp planning docs

**Step 2: Plan Resolution**
- **Mult plans found** → Present list, ask usr which 2 follow
- **No plans found** → Ask: "No existing plan found. Would you like 2 cr8 proj plan first?"
  - If yes → Jump 2 `/axi-feature` workflow 4 comp planning
  - If no → Ask usr 2 describe wrk & cr8 minimal spec

**Step 3: Work Item Selection**
- Parse selected plan doc 4 all wrk items
- Filter 4 unblocked items (no incomplete dependencies)
- Present avail opts: "Avail wrk items: [list]. Which would you like 2 wrk on?"
- If item claimed by another session → Offer 2 take over or select diff item

**Step 3.5: Doc Locking & Ownership Claiming**
- **🚨**: Follow doc locking procedures from `/axi-plan` before proceeding
- **Lock Acquisition**: Check if plan doc is locked by another session
  - If locked → Wait 30 sec & retry up 2 3 times
  - Cr8 `.lock` fl w/ session ID + ts + op
- **Refresh & Verify**: Re-read plan 2 ensure you have latest ver
- **Ownership Check**: Verify wrk item is still unowned in refreshed doc
  - If unowned → Add ownership info: `**Owner**: [session_id] 🚀 **CLAIMED**`
  - If already claimed → Select diff wrk item & confirm w/ usr
- **🚨**: Upd plan doc w/ ownership info BEFORE starting any impl wrk
- **Lock Release**: Delete lock fl immediately after ownership upd

### Phase 2: Work Item Analysis & valid8n Planning

**Step 4: Work Item Analysis**
- **Scope**: What exactly needs 2 be impl?
- **📁 involved**: Which fls will be cr8d/modified?
- **Dependencies**: What existing code does this rely on?
- **🎯 criteria**: How will we know it's comp?
- **Testing approach**: Unit tests, integ tests, or both?

**Step 5: Proactive valid8n Planning**
**Five-Pillar Pre-Planning:**
1. **Coding Standards**: Survey existing code patterns, naming conventions, err handling
2. **📋**: Plan docstrings, cmts, README upd during impl
3. **Proj Patterns**: Identify existing patterns 2 follow (imports, fl structure, etc.)
4. **Testing**: Design test strategy that achieves meaningful coverage & valid8n
5. **Instruction ⭐**: If modifying cmds/agents, follow proc-oriented stds

**Active Rules Integ:**
- Load & apply usr overrides (`.axiomantic/user-overrides.md`)
- Load & apply proj overrides (`.axiomantic/project-overrides.md`)
- Note any rule conflicts & resolve according 2 precedence (Usr > Proj > Base)
- Plan impl approach that follows active rule set

**Step 6: Test-First Dev Decision**
**Use TDD 4**: New func, API endpoints, biz logic, dat transformations
**Skip TDD 4**: UI styling, config changes, docs, simple fl ops

**If using TDD:**
1. Write failing tests that would pass when feat is comp
2. Follow testing stds from `/axi-test` & active rules
3. Run tests 2 confirm they fail (red phase)
4. Begin impl 2 make tests pass

### Phase 3: Impl w/ Continuous valid8n

**Step 7: Impl Cycle**
1. **Pre-Impl**: Review active rules & valid8n criteria before coding
2. **Impl**: Write code following identified patterns & active rules
3. **Continuous valid8n**: Apply Five-Pillar chks during dev, not after
4. **Test**: Run tests & observe res w/ meaningful assertions
5. **Debug**: If failures occur, apply 6-step debugging methodology
6. **Iterate**: Repeat until tests pass & req met
7. **Final valid8n**: Confirm Five-Pillar compliance before marking comp

**Continuous Five-Pillar App:**
- **During Coding**: Follow discovered patterns, apply naming conventions, handle err consistently
- **During 📋**: Write docstrings & cmts that match proj style
- **During Testing**: Cr8 tests that valid8 behavior meaningfully & achieve coverage 🎯
- **Before Commits**: Self-valid8 vs all five pillars 2 catch issues early

## 6-Step Scientific Debugging Methodology

When encountering failures, test err, or unexpected behavior:

### 1. Reproduce Systematically
- Cr8 minimal, consistent reproduction case
- Doc exact steps, inputs, & env conditions
- Verify issue occurs repeatedly under same conditions
- Isolate vars - change one thing @ time

### 2. Gather Evidence & Context
- Collect all relevant logs, err msgs, & stack traces
- Doc env details (ver, configs, state)
- Capture exact inp dat & expected vs actual outputs
- Use debugging 🛠️ 2 inspect runtime state

### 3. Form Scientific Hypotheses
- Generate 2-3 spec hypotheses abt root cause based on evidence
- Make hypotheses testable & falsifiable
- Consider mult potential causes, don't fixate on 1st guess
- Q assumptions - "What am I assuming that might be wrong?"

### 4. Test Hypotheses Methodically
- Design spec tests 4 each hypothesis
- Test one hypothesis @ time w/ controlled changes
- Doc what you test & res (even negative res)
- Use scientific meth - isolate vars & observe

### 5. Identify Root Cause, Not Symptoms
- Look beyond immediate symptoms 2 underlying sys causes
- Ask "Why?" iteratively - each answer leads 2 deeper "why?"
- Consider comp interactions, timing issues, state dependencies
- Distinguish btwn triggers & root causes

### 6. Fix Comprehensively & valid8
- Addr root cause, not just surface symptoms
- Test fix thoroughly - solves problem w/o breaking other parts?
- Consider broader impact on other sys comp
- Upd tests, docs, err handling 2 prevent recurrence

## Work Item Completion 🔄

### Completion valid8n Checklist
Before marking wrk item comp:
1. **Functionality** → All acceptance criteria met? ✅
2. **Testing** → Tests pass w/ adequate coverage? ✅
3. **Code ⭐** → Follows proj coding stds? ✅
4. **📋** → Code properly documented? ✅
5. **Integ** → Works correctly w/ existing codebase? ✅
6. **No Regressions** → Existing functionality still wrks? ✅

### Work Item Completion Proto
**Doc Locking & Upd:**
- **🚨**: Follow doc locking procedures from `/axi-plan` before modifying plan doc
- **Lock Acquisition**: Check if plan doc is locked by another session
  - If locked → Wait 30 sec & retry up 2 3 times
  - Cr8 `.lock` fl w/ session ID + ts + op
- **Refresh Doc**: Re-read plan 2 ensure no conflicts w/ other sessions

**Completion Status Upd:**
- Move wrk item from active sect 2 comp sect
- Cr8 short summary of changes made (1-2 sentences)
- Rem ownership info (session ID, ts) - no longer relevant
- **PRESERVE**: Phase/track num info 4 dependency refs
- Mark dependencies as satisfied 4 dependent items
- Upd progress indicators & milestone tracking

**📁 Lock Release:**
- Delete lock fl immediately after completion upd
- Upd coord stat if using orchestrated plan
- Ensure clean handoff 4 dependent wrk items

### Commit & 📋
- Cr8 meaningful commit w/ conventional fmt
- Include wrk item ref in commit msg
- Upd relevant docs
- Note discovered issues or tech debt 4 future consideration

## Integ w/ Other Cmds

### Plan Mgmt
- Use `/axi-plan` 4 orchestrated multi-assistant plans
- Handle plan conflicts & coord automatically
- Upd plan stat as wrk items comp

### ⭐ Assurance
- Apply `/axi-validate` stds throughout dev
- Use `/axi-test` systematic approach 4 test cr8tion
- Ensure Five-Pillar valid8n before completion

### Feat Dev
- If wrk item req architectural analysis → Integ w/ `/axi-feature`
- Apply integ planning 4 complex feat
- Use codebase analysis capabilities when needed

## Advanced Feat

### Context-Aware Dev
- Adapt impl approach based on proj type & tech
- Use proj-spec patterns discovered thru codebase analysis
- Apply appropriate testing strategies 4 tech stack
- Follow established architectural patterns

### Multi-Assistant Coord
- Respect fl ownership & coord proto when wrking on orchestrated plans
- Upd global plan stat appropriately
- Handle conflicts & blocking situations
- Communicate progress thru plan doc upd

#### Session Mgmt
- Generate uniq session ID 4 impl wrk: `IMPL_[YYYYMMDD]_[HHMM]_[4-char-hash]`
- Include session ID in all fl modifications & commit msgs
- Track active sessions 2 prevent conflicts w/ concurrent impl
- Maintain session logs 4 coord & debugging purposes

### Continuous ⭐ Assurance
- Apply valid8n stds continuously, not just @ completion
- Use systematic debugging 4 any issues encountered
- Maintain clean, readable code throughout proc
- Doc decisions & trade-offs made during impl

## 🎯 Criteria
- ✅ **Plan-driven dev** w/ clear wrk item selection & tracking
- ✅ **Systematic debugging approach** when issues arise
- ✅ **⭐ gates enforced** throughout dev proc
- ✅ **Comp wrk item** meeting all acceptance criteria
- ✅ **Clean, tested code** following proj stds
- ✅ **Upd plan stat** w/ accurate progress tracking
- ✅ **No tech debt** introduced w/o docs
- ✅ **Professional impl** integrating seamlessly w/ existing codebase

## Usage
```
/axi-implement [work_item_description]
```

**Ex:**
```
/axi-implement "Add usr auth endpoints"
/axi-implement  # Will prompt 4 plan selection
```

Remember: 🎯 is professional-⭐ impl that integrates seamlessly w/ existing proj & maintains long-term maintainability thru systematic dev practices.
