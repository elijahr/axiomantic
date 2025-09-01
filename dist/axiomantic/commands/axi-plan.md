# /axi-plan - Advanced Multi-Assistant Orchestration

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Converts regular plan doc into parallelizable track-based plan w/ comprehensive coordination instructions 4 multiple AI assistants working simultaneously on: **$ARGUMENTS**

> **💡 Best Results**: This command works best w/ LLMs that have advanced reasoning capabilities. Analysis requires critical thinking about task dependencies & parallel execution opportunities.

## 🚨 PRESERVATION PROTOCOL

**🚨: This enhances plans, never replaces content**

### Core Rules:
1. **COMPLETED work** (✅ status) → Can be summarized 4 history
2. **ACTIVE/FUTURE work** → Preserve 100% of all details, specs, examples
3. **When in doubt** → Always preserve original content
4. **Valid8n checkpoint** → Final output must be ≥80% of original size

### Step-by-Step 🔄:
1. **Analyze**: Classify each work item by status (✅/🔄/📋/⏸️)
2. **Preserve**: Copy all active work content completely
3. **Enhance**: Add parallelization metadata alongside original content
4. **Validate**: Check preservation ratio & content completeness

## What This Command Does

**Input**: Sequential plan with work items
**Output**: Refactoring-first parallel execution plan + all original content preserved

### Key Transformations:
1. **Bottleneck Analysis** - Identifies shared files/modules blocking parallelization
2. **Refactoring Strategy** - Creates focused module extraction plans as Tier 0 work
3. **File Impact Analysis** - Maps each work item to specific files it will create/modify/delete
4. **Post-Refactor Dependencies** - Identifies dependencies based on the refactored architecture
5. **Maximum Parallelization** - Achieves optimal parallel execution through strategic refactoring
6. **Coordination System** - Adds locking, claiming, and progress tracking
7. **Content Preservation** - Maintains all original planning detail for active work

### 🚀 Refactoring-First Philosophy:
**Instead of working around bottlenecks → Eliminate them through strategic refactoring**
- Shared file touched by 5 tasks? → Extract into 5 focused modules
- Monolithic component blocking progress? → Split into logical sub-components
- Configuration scattered across files? → Centralize then distribute properly

## Execution Algorithm

### Phase 1: Analysis
```
For each work item:
1. Determine status: ✅ completed | 🔄🔄📋⏸️ active
2. Map file impacts: CREATE [files] | MODIFY [files] | DELETE [files]
3. Identify dependencies: File conflicts | Functional requirements
```

### Phase 2: Refactoring-First Parallelization
```
🔥 PRIORITY: Identify & Execute Refactoring Opportunities
1. Scan for shared file bottlenecks → Extract into focused modules
2. Detect monolithic files → Split into logical components
3. Map refactoring tasks → Create "R-Track" (Refactoring Track)
4. Position refactoring as Tier 0 (foundation for all parallel work)

THEN: Traditional Parallelization
5. Group refactored items with no file conflicts → Parallel tracks
6. Create execution tiers: Tier 0 (refactor) → Tier 1 → Tier 2 → etc
7. Calculate max parallelization post-refactoring
```

### Phase 3: Enhancement
```
1. Add coordination sections at document top
2. Enhance each work item with:
   - Track assignment (A1, B2, etc.)
   - File ownership list
   - Dependencies and prerequisites
   - Effort estimation
3. Preserve ALL original content for active items
```

### Phase 4: Validation
```
1. Content check: All specs, examples, details preserved? ✅
2. Size check: Output ≥80% of input size? ✅
3. Function check: Can 3+ devs work in parallel? ✅
```

## Generated Output Structure

```markdown
# [Original Plan Title] - Multi-Assistant Orchestration

## 🎯 Parallelization Overview
- **Refactoring-first approach**: Break bottlenecks before parallelizing
- Tier 0 refactoring tasks: [N] (foundation work)
- Max parallel developers post-refactoring: [N]
- Execution tiers: R-Track (Tier 0) → [visual diagram of parallel tiers]
- Critical path: Refactoring completion → Massive parallelization

## 🔒 Coordination System
- Global plan lock protocol
- Track claiming procedures
- File ownership rules

## 📊 Execution Tracks

### 🔥 Track R: Refactoring Foundation (Tier 0 - Execute First)
- R1: [Refactoring Task] - Extract: [modules] - Enables: [tracks] - Effort: [hours]
- R2: [Refactoring Task] - Split: [monolith] - Enables: [tracks] - Effort: [hours]

### Track A: [Description] (Tier 1 - After R-Track)
- A1: [Work Item] - Files: [focused modules] - Effort: [hours]
- A2: [Work Item] - Files: [focused modules] - Effort: [hours]

### Track B: [Description] (Tier 1 - Parallel with Track A)
- B1: [Work Item] - Files: [focused modules] - Effort: [hours]

[ORIGINAL PLAN CONTENT - ALL PRESERVED]
Enhanced with metadata but content intact
```

## Critical Thinking Framework

When analyzing dependencies and bottlenecks, ask:
- **🔥 "What files are shared by multiple tasks?"** → Prime refactoring candidates
- **🔥 "Can this monolithic file be split into focused modules?"** → Usually YES
- **🔥 "What's the refactoring effort vs parallelization gain?"** → Often heavily favors refactoring
- **"Does B2 REALLY need B1 first?"** → Check file conflicts, not organizational order
- **"What breaks if these run in parallel?"** → Look for actual technical blockers after refactoring

### 🎯 Refactoring Decision Matrix:
- **High shared usage + Low refactoring cost = ALWAYS refactor**
- **Medium shared usage + Medium refactoring cost = USUALLY refactor**
- **Low shared usage + High refactoring cost = Consider alternatives**

### 💡 Refactoring Patterns:
1. **Extract Module**: Pull shared logic into focused, single-responsibility files
2. **Split Component**: Break monoliths into logical sub-components
3. **Interface Separation**: Create clear boundaries between concerns
4. **Configuration Centralization**: Gather scattered config into manageable chunks

## Common Bottleneck Patterns & Refactoring Solutions

### 🚫 Bottleneck: Shared Configuration File
- **Problem**: 5 tasks all need to modify `config.js`
- **Solution**: Extract to `config/database.js`, `config/auth.js`, `config/api.js` etc.
- **Result**: 5 tasks can run in parallel on focused config modules

### 🚫 Bottleneck: Monolithic Component
- **Problem**: Multiple features touching `UserComponent.js`
- **Solution**: Split into `UserProfile.js`, `UserAuth.js`, `UserPreferences.js`
- **Result**: Feature teams work on isolated, focused components

### 🚫 Bottleneck: Utility File Sprawl
- **Problem**: Every task modifying the same `utils.js`
- **Solution**: Create `utils/validation.js`, `utils/formatting.js`, `utils/api.js`
- **Result**: Tasks operate on distinct utility domains

### ✅ Success Pattern: Refactoring-First Workflow
1. **Identify** shared file bottlenecks (usually 2-3 major ones)
2. **Plan** extraction/splitting strategy (R-Track tasks)
3. **Execute** refactoring as Tier 0 (1-2 developers, 4-8 hours typically)
4. **Unleash** massive parallelization on focused modules (3-8+ developers)
5. **Celebrate** 3-5x faster execution vs working around bottlenecks

## Success Criteria
- ✅ **Refactoring opportunities identified and planned as Tier 0 work**
- ✅ **Post-refactoring: 4+ assistants can work simultaneously without conflicts**
- ✅ **Focused, single-responsibility modules enable clean parallel work**
- ✅ All original planning detail preserved for active work
- ✅ Clear file ownership preventing conflicts
- ✅ Realistic refactoring estimates (typically 4-8 hours upfront investment)
- ✅ Comprehensive coordination instructions
- ✅ **3-5x parallelization improvement through strategic refactoring**

## Usage

```
/axi-plan [input_file] [output_file]
```

**Parameters:**
- `input_file`: Path to existing plan file (default: PLAN.md)
- `output_file`: Path for parallelized output (default: PLAN_PARALLEL.md)

**Example:**
```
/axi-plan PLAN.md PLAN.md
/axi-plan docs/project-plan.md PLAN.md
```

## Example Enhancement

**Original Work Items with Bottleneck:**
```
Task A: Add user authentication to UserComponent.js
Task B: Add user preferences to UserComponent.js
Task C: Add user profile editing to UserComponent.js
```

**Enhanced with Refactoring-First Approach:**
```
🔥 TIER 0 - Refactoring Foundation:
## R1: Split UserComponent into Focused Modules

**Refactoring Task:**
Extract UserComponent.js into:
- UserAuth.js (authentication logic)
- UserProfile.js (profile management)
- UserPreferences.js (settings/preferences)
- UserCore.js (shared base functionality)

**Parallel Execution Metadata:**
- Track: R1 (Foundation - MUST complete first)
- Files: CREATE [4 new focused modules], MODIFY [UserComponent.js → UserCore.js]
- Dependencies: None (start immediately)
- Effort: 3-4 hours
- Enables: Tracks A, B, C to run in parallel

TIER 1 - Parallel Execution (After R1):
## A1: Implement User Authentication
[ALL ORIGINAL CONTENT PRESERVED]
Add user authentication features...

**Parallel Execution Metadata:**
- Track: A1 (can run parallel with B1, C1)
- Files: UserAuth.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hours

## B1: Implement User Preferences
[ALL ORIGINAL CONTENT PRESERVED]
Add user preferences features...

**Parallel Execution Metadata:**
- Track: B1 (can run parallel with A1, C1)
- Files: UserPreferences.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hours

## C1: Implement Profile Editing
[ALL ORIGINAL CONTENT PRESERVED]
Add user profile editing...

**Parallel Execution Metadata:**
- Track: C1 (can run parallel with A1, B1)
- Files: UserProfile.js (focused, no conflicts)
- Dependencies: R1 completion
- Effort: 2-3 hours

🎯 Result: 4 hours refactoring → 3 parallel tracks → 6-7 hours total vs 9+ hours sequential
```
