# /axi-plan - Advanced Multi-Assistant Orchestration

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Converts reg plan doc into parallelizable track-based plan w/ comp coord instr 4 mult AI assistants wrking simultaneously on: **$ARGUMENTS**

> **💡 Best Results**: This cmd wrks best w/ LLMs that have adv reasoning capabilities. Analysis req critical thinking abt tsk dependencies & parallel exec opportunities.

## 🚨 PRESERVATION PROTO

**🚨: This enhances plans, never replaces cont**

### Core Rules:
1. **COMP wrk** (✅ stat) → Can be summarized 4 hist
2. **ACTIVE/FUTURE wrk** → Preserve 100% of all details, specs, ex
3. **When in doubt** → Always preserve orig cont
4. **valid8n checkpoint** → Final out must be ≥80% of orig size

### Step-by-Step 🔄:
1. **Analyze**: Classify each wrk item by stat (✅/🔄/📋/⏸️)
2. **Preserve**: Copy all active wrk cont comp
3. **Enhance**: Add parallelization metadata alongside orig cont
4. **valid8**: Check preservation ratio & cont completeness

## What This Cmd Does

**Inp**: Sequential plan w/ wrk items
**Out**: Refactoring-1st parallel exec plan + all orig cont preserved

### Key Transformations:
1. **Bottleneck Analysis** - Identifies shared fls/modules blocking parallelization
2. **Refactoring Strategy** - Cr8s focused module extraction plans as Tier 0 wrk
3. **📁 Impact Analysis** - Maps each wrk item 2 spec fls it will cr8/modify/del
4. **Post-Refactor Dependencies** - Identifies dependencies based on refactored arch
5. **Max Parallelization** - Achieves optimal parallel exec thru strategic refactoring
6. **Coord Sys** - Adds locking, claiming, & progress tracking
7. **Cont Preservation** - Maintains all orig planning detail 4 active wrk

### 🚀 Refactoring-1st Philosophy:
**Instead of wrking around bottlenecks → Eliminate them thru strategic refactoring**
- Shared fl touched by 5 tsks? → Extract into 5 focused modules
- Monolithic comp blocking progress? → Split into logical sub-comp
- Config scattered across fls? → Centralize then distribute properly

## Exec Algo

### Phase 1: Analysis
```
4 each wrk item:
1. Determine stat: ✅ comp | 🔄🔄📋⏸️ active
2. Map fl impacts: CREATE [fls] | MODIFY [fls] | DELETE [fls]
3. Identify dependencies: 📁 conflicts | Functional req
```

### Phase 2: Refactoring-1st Parallelization
```
🔥 PRIORITY: Identify & Exec Refactoring Opportunities
1. Scan 4 shared fl bottlenecks → Extract into focused modules
2. Detect monolithic fls → Split into logical comp
3. Map refactoring tsks → Cr8 "R-Track" (Refactoring Track)
4. Position refactoring as Tier 0 (foundation 4 all parallel wrk)

THEN: Traditional Parallelization
5. Group refactored items w/ no fl conflicts → Parallel tracks
6. Cr8 exec tiers: Tier 0 (refactor) → Tier 1 → Tier 2 → etc
7. Calculate max parallelization post-refactoring
```

### Phase 3: Enhancement
```
1. Add coord sects @ doc top
2. Enhance each wrk item w/:
   - Track assign (A1, B2, etc.)
   - 📁 ownership list
   - Dependencies & prereq
   - Effort estimation
3. Preserve ALL orig cont 4 active items
```

### Phase 4: valid8n
```
1. Cont chk: All specs, ex, details preserved? ✅
2. Size chk: Out ≥80% of inp size? ✅
3. Func chk: Can 3+ devs wrk in parallel? ✅
```

## Generated Out Structure

```markdown
# [Orig Plan Ttl] - Multi-Assistant Orchestration

## 🎯 Parallelization Overview
- **Refactoring-1st approach**: Break bottlenecks before parallelizing
- Tier 0 refactoring tsks: [N] (foundation wrk)
- Max parallel devs post-refactoring: [N]
- Exec tiers: R-Track (Tier 0) → [visual diagram of parallel tiers]
- Critical path: Refactoring completion → Massive parallelization

## 🔒 Coord Sys
- Global plan lock proto
- Track claiming procedures
- 📁 ownership rules

### Doc Locking Proto
Each assistant must establish exclusive locks before modifying shared docs:

1. **Lock Acquisition**: Add `<!-- LOCKED: [Assistant-ID]_[Ts] -->` @ doc start
2. **Exclusive Acc**: Only lock holder may modify doc cont
3. **Lock Release**: Rem lock marker when wrk comp or paused
4. **Conflict Resolution**: Later ts override earlier ones after 30min timeout
5. **Emergency Override**: Use `<!-- EMERGENCY_UNLOCK: [Reason] -->` 4 critical fixes

### Track Claiming Sys
- Assistants claim wrk tracks using uniq identifiers: `PLAN_[YYYYMMDD]_[HHMM]_[4-char-hash]`
- Track assign rec in plan hdr w/ claiming assistant details
- Active tracks marked w/ `🔄 CLAIMED: [Assistant-ID]` in track hdrs
- Track handoff req explicit release by curr owner & acceptance by new owner
- Progress upd maintained in dedicated coord log sect

### 📁 Ownership Rules
- Each fl can have only ONE pri owner during active dev
- Owner responsible 4 all modifications, integ, & conflict resolution
- Ownership changes req coord thru plan doc upd
- Emergency modifications allowed w/ immediate owner notif & justification
- Shared fls req pre-coord or refactoring into owner-spec modules

## 📊 Exec Tracks

### 🔥 Track R: Refactoring Foundation (Tier 0 - Exec 1st)
- R1: [Refactoring Tsk] - Extract: [modules] - Enables: [tracks] - Effort: [hrs]
- R2: [Refactoring Tsk] - Split: [monolith] - Enables: [tracks] - Effort: [hrs]

### Track A: [Desc] (Tier 1 - After R-Track)
- A1: [Wrk Item] - 📁: [focused modules] - Effort: [hrs]
- A2: [Wrk Item] - 📁: [focused modules] - Effort: [hrs]

### Track B: [Desc] (Tier 1 - Parallel w/ Track A)
- B1: [Wrk Item] - 📁: [focused modules] - Effort: [hrs]

[ORIG PLAN CONT - ALL PRESERVED]
Enhanced w/ metadata but cont intact
```

## Critical Thinking Fwk

When analyzing dependencies & bottlenecks, ask:
- **🔥 "What fls are shared by mult tsks?"** → Prime refactoring candidates
- **🔥 "Can this monolithic fl be split into focused modules?"** → Usually YES
- **🔥 "What's refactoring effort vs parallelization gain?"** → Often heavily favors refactoring
- **"Does B2 REALLY need B1 1st?"** → Chk fl conflicts, not organizational order
- **"What breaks if these run in parallel?"** → Look 4 actual tech blockers after refactoring

### 🎯 Refactoring Decision Matrix:
- **High shared usage + Low refactoring cost = ALWAYS refactor**
- **Med shared usage + Med refactoring cost = USUALLY refactor**
- **Low shared usage + High refactoring cost = Consider alternatives**

### 💡 Refactoring Patterns:
1. **Extract Module**: Pull shared logic into focused, single-responsibility fls
2. **Split Comp**: Break monoliths into logical sub-comp
3. **Interface Separation**: Cr8 clear boundaries btwn concerns
4. **Config Centralization**: Gather scattered config into manageable chunks

## Common Bottleneck Patterns & Refactoring Solutions

### 🚫 Bottleneck: Shared Config 📁
- **Problem**: 5 tsks all need 2 modify `config.js`
- **Solution**: Extract 2 `config/database.js`, `config/auth.js`, `config/api.js` etc.
- **Result**: 5 tsks can run in parallel on focused config modules

### 🚫 Bottleneck: Monolithic Comp
- **Problem**: Mult feat touching `UserComponent.js`
- **Solution**: Split into `UserProfile.js`, `UserAuth.js`, `UserPreferences.js`
- **Result**: Feat teams wrk on isolated, focused comp

### 🚫 Bottleneck: Utility 📁 Sprawl
- **Problem**: Every tsk modifying same `utils.js`
- **Solution**: Cr8 `utils/validation.js`, `utils/formatting.js`, `utils/api.js`
- **Result**: Tsks operate on distinct utility domains

### ✅ Success Pattern: Refactoring-1st Workflow
1. **Identify** shared fl bottlenecks (usually 2-3 major ones)
2. **Plan** extraction/splitting strategy (R-Track tsks)
3. **Exec** refactoring as Tier 0 (1-2 devs, 4-8 hrs typically)
4. **Unleash** massive parallelization on focused modules (3-8+ devs)
5. **Celebrate** 3-5x faster exec vs wrking around bottlenecks

## 🎯 Criteria
- ✅ **Refactoring opportunities identified & planned as Tier 0 wrk**
- ✅ **Post-refactoring: 4+ assistants can wrk simultaneously w/o conflicts**
- ✅ **Focused, single-responsibility modules enable clean parallel wrk**
- ✅ All orig planning detail preserved 4 active wrk
- ✅ Clear fl ownership preventing conflicts
- ✅ Realistic refactoring estimates (typically 4-8 hrs upfront investment)
- ✅ Comp coord instr
- ✅ **3-5x parallelization improvement thru strategic refactoring**

## Usage

```
/axi-plan [input_file] [output_file]
```

**Param:**
- `input_file`: Path 2 existing plan fl (def: PLAN.md)
- `output_file`: Path 4 parallelized out (def: PLAN_PARALLEL.md)

**Ex:**
```
/axi-plan PLAN.md PLAN.md
/axi-plan docs/project-plan.md PLAN.md
```

## Ex Enhancement

**Orig Wrk Items w/ Bottleneck:**
```
Tsk A: Add usr auth 2 UserComponent.js
Tsk B: Add usr preferences 2 UserComponent.js
Tsk C: Add usr profile editing 2 UserComponent.js
```

**Enhanced w/ Refactoring-1st Approach:**
```
🔥 TIER 0 - Refactoring Foundation:
## R1: Split UserComponent into Focused Modules

**Refactoring Tsk:**
Extract UserComponent.js into:
- UserAuth.js (auth logic)
- UserProfile.js (profile mgmt)
- UserPreferences.js (settings/preferences)
- UserCore.js (shared base functionality)

**Parallel Exec Metadata:**
- Track: R1 (Foundation - MUST comp 1st)
- 📁: CREATE [4 new focused modules], MODIFY [UserComponent.js → UserCore.js]
- Dependencies: None (start immediately)
- Effort: 3-4 hrs
- Enables: Tracks A, B, C 2 run in parallel

TIER 1 - Parallel Exec (After R1):
## A1: Impl Usr Auth
[ALL ORIG CONT PRESERVED]
Add usr auth feat...

**Parallel Exec Metadata:**
- Track: A1 (can run parallel w/ B1, C1)
- 📁: UserAuth.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hrs

## B1: Impl Usr Preferences
[ALL ORIG CONT PRESERVED]
Add usr preferences feat...

**Parallel Exec Metadata:**
- Track: B1 (can run parallel w/ A1, C1)
- 📁: UserPreferences.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hrs

## C1: Impl Profile Editing
[ALL ORIG CONT PRESERVED]
Add usr profile editing...

**Parallel Exec Metadata:**
- Track: C1 (can run parallel w/ A1, B1)
- 📁: UserProfile.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hrs

🎯 Res: 4 hrs refactoring → 3 parallel tracks → 6-7 hrs tot vs 9+ hrs sequential
```
