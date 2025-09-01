# /axi-plan - Advanced Multi-Assistant Orchestration

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

Converts a regular plan document into a parallelizable track-based plan w/ comprehensive coordination instructions for multiple AI assistants working simultaneously on: **$ARGUMENTS**

> **💡 Best Results**: This command works best w/ LLMs that have advanced reasoning capabilities. The analysis requires critical thinking about task dependencies & parallel execution opportunities.

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

## Planning Standards Integration

### Planning Process

All non-trivial work must be planned & documented BEFORE impl begins.

1. **Step Back & Survey**: Read relevant files, understand arch, identify components, note constraints
2. **Internal Dialogue**: Question the problem, approaches, risks/trade-offs, system interactions
3. **Context-Informed Planning**: Reflect codebase patterns, infrastructure, team practices, realistic scope, apply Four-Pillar Validation
4. **Plan Validation**: Review against codebase, check assumptions, ensure actionable/specific, consider alternatives

### Planning Hierarchy

1. **ROADMAP.md** - Major features, significant refactoring, multi-phase projects
2. **README.md (Roadmap Section)** - Project-level planning & feature roadmaps
3. **Temporary Plan Files** - All other planning (create `.tmp/`, ensure in `.gitignore`)

### Plan Template

```markdown
# [Feature/Task] Implementation Plan

## Overview: [Brief description of what/why]

## Validation Integration: Standards, Docs, Patterns, Testing strategy

## Phases: Planning/Setup → Core Implementation → Integration/Testing

## Success Criteria & Risks: [Functionality works, passes valid8n | Risk mitigation]
```

### Plan Management

**Complexity Guidelines**: Simple (<1hr) = inline valid8n; Medium (1-4hr) = .tmp plan; Complex (>4hr) = ROADMAP.md

**Plan Discovery**: Check for existing plans (ROADMAP.md > PROJECT_PLAN.md > README roadmap > TODO.md). Ask user which to follow if multiple found.

**User Intent Signals**:
- "No plan"/"ignore plans" → DISABLED
- "Pause plan" → PAUSED
- "Resume plan" → ACTIVE
- "Done w/ plan" → COMPLETED

**Progress Tracking**: Auto-update completion status, mark completed items, update progress indicators, reference current status in responses

### Plan Creation Guidance

For substantial tasks w/ multiple phases, prompt user: "This looks like a substantial task w/ multiple phases. Would you like me to create a project plan/roadmap first to track our progress? This helps ensure we don't miss steps & makes it easier to resume work later."

### Milestone & Commit Management

**After completing significant milestones or plan phases:**
- **Self-validate first**: Complete all four valid8n pillars before considering milestone complete
- **Prompt user to commit**: "This completes [milestone/phase]. All valid8n pillars checked. Would you like to commit these changes before continuing?"
- **Use conventional commit format**: `feat:`, `fix:`, `docs:`, `refactor:`, etc.
- **Include valid8n confirmation**: "Validated: standards ✅, docs ✅, patterns ✅, testing ✅"
- **Break large changes into logical commits** when working through multi-step plans

**Commit Message Templates**:

**For validated milestones:**
```
feat: implement user authentication system

- Add JWT token generation & valid8n
- Create user login/logout endpoints
- Add password hashing w/ bcrypt
- Include comprehensive unit tests (95% coverage)

Validated: coding standards, docs, project patterns, testing
```

**For valid8n fixes:**
```
refactor: improve code standards compliance

- Fix inconsistent naming conventions
- Add missing error handling
- Update docs for clarity
- Ensure test coverage for edge cases

Self-valid8n: all four pillars verified
```

## 🧠 Critical Thinking Instructions for LLM Execution

When executing this command, the LLM should:

1. **Have an internal dialogue about each task**:
   - "Does task B2 REALLY need B1 to complete first?"
   - "What files does B1 modify? What files does B2 modify?"
   - "If they modify different files, they can be parallel"
   - "Even if they're in the same track, are they actually independent?"

2. **Question every stated dependency**:
   - "Is this a true dependency or just organizational grouping?"
   - "Could these tasks run simultaneously if we had multiple developers?"
   - "What would break if we ran these in parallel?"

3. **Think about work unit sizes**:
   - "Is this a 2-hour task or an 8-hour task?"
   - "Should this be broken into smaller pieces?"
   - "Can parts of this task be done in parallel?"

4. **Challenge sequential assumptions**:
   - "Why are B1, B2, B3 listed sequentially?"
   - "Do they share code? Do they share files?"
   - "Could three different developers work on these simultaneously?"

## What This Command Does

1. **Performs File-Level Impact Analysis**: Maps each work item to specific files that will be created, modified, or deleted
2. **Analyzes Dependencies**: Identifies task dependencies & creates dependency chains based on file conflicts
3. **Detects Refactoring Opportunities**: Identifies files that could be split to unlock better parallelization
4. **Creates Parallel Tracks**: Groups independent tasks into parallel execution tracks w/ no file conflicts
5. **Detects False Dependencies**: Identifies tasks marked sequential but actually independent (different files)
6. **Creates Sub-Track Granularity**: Breaks large tracks into parallel sub-tasks w/ explicit file ownership
7. **Adds Coordination System**: Inserts comprehensive multi-assistant coordination instructions w/ global plan locking
8. **Defines Convergence Points**: Identifies where tracks must synchronize
9. **Establishes Ownership Model**: Creates session-based track claiming system w/ file-level conflict prevention
10. **Adds Progress Tracking**: Inserts detailed progress metrics, valid8n, & plan compaction instructions

## Generated Instructions Include

### 🔒 Global Plan Lock System
- **Plan Lock Protocol**: Mandatory exclusive lock for all plan document updates
- **Lock Format**: `🔒 PLAN LOCKED BY: [session_id] at [timestamp]`
- **Lock Acquisition**: Check for existing locks before any plan modifications
- **Lock Release**: Always release lock immediately after plan updates
- **Lock Timeout**: Instructions for handling stale locks (>10 minutes)
- **Lock Conflict Resolution**: What to do when lock is already held

### 🏷️ Track Ownership System
- **Session ID Generation**: Format `name_randomword_number` (e.g., `claude_zebra_392`)
- **Claiming Process**: Edit track headers w/ owner session ID under plan lock
- **File-Level Ownership**: Each work item explicitly lists files it will modify
- **Conflict Prevention**: No two work items can claim overlapping files
- **Stalled Work Handling**: Instructions for taking over abandoned claimed tracks
- **Release Protocol**: When & how to release track ownership
- **Fresh Plan Reading**: Always re-read plan before claiming or working on items

### 📋 Track Management Protocol
- **Fresh Plan Reading**: Always re-read entire plan before starting work or making updates
- **Availability Checking**: How to determine if tracks are truly available vs blocked or claimed
- **File Conflict Validation**: Verify no file overlaps w/ other active work items
- **Dependency Validation**: Verify prerequisite tracks are actually complete
- **Convergence Points**: Named synchronization points where tracks must wait
- **Progress Validation**: How to verify track completion before releasing dependencies
- **Plan Compaction**: Instructions for summarizing completed work items to save tokens
- **Rollback Procedures**: What to do if track work needs to be undone

### 🔄 Coordination Instructions
- **Status Updates**: When & how to update plan w/ progress
- **Communication Patterns**: How assistants coordinate without direct communication
- **Work Handoffs**: Protocol for passing work between assistants
- **Quality Gates**: Validation steps before marking work complete
- **Documentation Requirements**: What docs must be maintained

### 🎯 Track Execution Guidelines
- **Work Scope Definition**: Clear boundaries for each track w/ explicit file lists
- **File Impact Analysis**: Each work item must list:
  - Files to be created (with full paths)
  - Files to be modified (with specific sections/functions)
  - Files to be deleted or moved
  - New directories to be created
- **File Ownership**: Exclusive file ownership during work item execution
- **Refactoring Opportunities**: Instructions for identifying & proposing file splits
- **Testing Requirements**: Test suites that must pass for track completion
- **Code Review Process**: Validation steps for code changes
- **Integration Points**: How track outputs integrate w/ other tracks

### ⚠️ Failure Handling
- **Blocked Track Protocol**: What to do when dependencies aren't met
- **Rollback Triggers**: Conditions requiring work to be undone
- **Error Recovery**: How to resume after failures
- **Escalation Paths**: When to ask for human intervention
- **Cleanup Procedures**: Maintaining repository cleanliness

### 📊 Progress Tracking System
- **Completion Metrics**: Quantitative measures of track progress
- **Status Indicators**: Visual progress indicators in plan
- **Milestone Definitions**: Clear completion criteria for each task
- **Validation Tests**: Automated tests confirming work completion
- **Timeline Management**: How to update & maintain realistic timelines

### 🔍 Quality Assurance
- **Code Standards**: Adherence to project coding standards
- **Test Coverage Requirements**: Minimum test coverage for track completion
- **Performance Benchmarks**: Performance criteria that must be met
- **Security Checks**: Security valid8n req
- **Documentation Standards**: Required docs for each track

### 🚨 Critical Path Management
- **Blocker Identification**: How to identify & escalate blocking issues
- **Priority Escalation**: When to prioritize one track over others
- **Resource Allocation**: How to distribute effort across tracks
- **Risk Management**: Identifying & mitigating project risks
- **Contingency Planning**: Backup plans for critical track failures

### 🎨 Customization Options
- **Track Naming Convention**: Standardized track naming format
- **Granularity Level**: Configure how fine-grained to make sub-tracks
  - `coarse`: Original track level (A, B, C, D)
  - `medium`: Sub-tracks within main tracks (B1, B2, B3)
  - `fine`: Micro-tasks (B1.1, B1.2, B1.3)
- **Parallelization Strategy**:
  - `conservative`: Maintain most dependencies
  - `aggressive`: Parallelize everything possible
  - `balanced`: Smart parallelization w/ safety checks
- **Session ID Format**: Flexible session identification system
- **Status Emoji System**: Consistent visual status indicators
- **Priority Classification**: High/Medium/Low priority system
- **Convergence Point Naming**: Standardized synchronization point names

## Implementation Details

The command performs these transformations:

### 1. File Impact Analysis & Refactoring Detection
- **Analyzes each work item's file req**: Creates/modifies/deletes which files
- **Maps file dependencies**: Identifies shared files that create bottlenecks
- **Detects refactoring opportunities**: Files that could be split to enable parallelization
  - Example: `utils.c` w/ multiple unrelated functions → split into `utils/math.c`, `utils/string.c`, etc.
  - Identifies when refactoring would unlock 2x, 3x, or more parallel tracks
- **Proposes refactoring as dependency**: Makes file splits the first work item if beneficial
- **Validates refactoring impact**: Ensures splits will be well-organized by concept, don't go against industry best practices, & don't break existing dependencies

### 2. Header Analysis & Track Creation
- Parses existing plan structure
- Identifies independent task groups based on file analysis
- Creates parallel execution tracks (A, B, C, D, etc.) w/ zero file conflicts
- **Detects sub-tasks within tracks that can be parallelized**
- **Creates sub-track notation (B1.1, B1.2, B1.3 for parallel sub-tasks)**
- **Identifies "false dependencies" (tasks marked sequential but actually independent)**
- Assigns descriptive track names & priorities

### 3. File-Based Dependency Mapping
- Analyzes task dependencies from original plan AND file impact analysis
- **File Conflict Detection**: Identifies when multiple work items touch same files
- **Distinguishes between "hard dependencies" (file conflicts) & "soft dependencies" (nice-to-have ordering)**
- **Creates micro-convergence points within tracks**
- **Identifies parallel work opportunities within single tracks**
- Creates dependency hierarchy diagram based on actual file conflicts
- **Generates parallel execution tiers showing simultaneous work possibilities**
- Establishes convergence points for synchronization
- Validates dependency chains for circular references

### 4. Parallel Execution Tier Generation
- **Groups truly independent tasks into execution tiers**
- **Tier 1: All tasks that can start immediately after prerequisites**
- **Tier 2: Tasks that depend on any Tier 1 completion**
- **Creates visual representation of parallel opportunities**
- **Calculates maximum parallelization factor (how many devs can work simultaneously)**
- **Identifies critical path vs parallel paths**

### 5. Global Plan Lock & Ownership System Integration
- **Adds global plan lock mechanism for all plan document updates**
- **Requires fresh plan reading before any work or claiming**
- Adds track ownership headers w/ session ID fields & file lists
- **Supports sub-track ownership (multiple owners per main track)**
- **Creates "work unit" size estimates (2-4 hours vs 8+ hours)**
- **Allows partial track claiming (e.g., claim B1 but not B2/B3)**
- Creates track status summary section w/ file ownership matrix
- **Shows parallel work availability dashboard**
- Inserts claiming/releasing instructions w/ lock protocol
- Adds stalled work recovery procedures

### 6. Progress Tracking & Plan Compaction
- Converts tasks to trackable items w/ clear completion criteria & file lists
- Adds quantitative progress metrics
- Inserts valid8n test references
- Creates milestone definitions w/ success criteria
- **Plan Compaction Instructions**: How to summarize completed work items to save tokens
- **Completed Work Archive**: Moving finished items to summary sections

### 7. Coordination Infrastructure
- Adds comprehensive multi-assistant coordination instructions w/ plan locking
- Creates conflict resolution procedures for both work items & plan updates
- Establishes communication protocols through plan updates (under lock)
- Defines work handoff procedures w/ file ownership transfer
- **Fresh Plan Reading Protocol**: When & how to re-read the plan document

### 8. Quality Assurance Framework
- Inserts code quality req
- Adds test coverage mandates
- Creates perf benchmark req
- Establishes docs standards
- **File-Level Validation**: Ensures all claimed files are actually modified as planned

The resulting parallelized plan enables multiple AI assistants to work simultaneously on different tracks while maintaining coordination, avoiding conflicts, & ensuring high-quality deliverables.

## 🔍 File-Level Analysis & Orchestration Algorithm

### Step 1: File Impact Analysis for Each Work Item
For every work item in the plan, the LLM must determine:

**Files to Create:**
- Full file paths for new files
- Directory structure req
- File types & purposes

**Files to Modify:**
- Exact file paths
- Specific functions/classes/sections to modify
- Nature of modifications (add, remove, refactor)

**Files to Delete/Move:**
- Files being removed or relocated
- Impact on other work items

**Example Analysis:**
```
Work Item B1: "Implement LayerNorm operation"
- CREATE: src/ops/layer_norm.comp (new compute shader)
- CREATE: include/layer_norm.h (header file)
- MODIFY: src/ops/registry.cpp (add LayerNorm to operation registry)
- MODIFY: tests/ops/test_operations.cpp (add LayerNorm tests)
```

### Step 2: Refactoring Opportunity Detection
The LLM should actively look for files that could be split to enable better parallelization:

**Bottleneck File Analysis:**
- Identify files that many work items need to modify
- Analyze if these files contain logically separable code
- Calculate parallelization improvement if split

**Refactoring Proposals:**
```
DETECTED BOTTLENECK: src/utils.c
- Used by work items: B1, B2, C1, C2, D1 (5 items blocked)
- Current: One 500-line file w/ math, string, & memory utilities
- PROPOSED REFACTORING: Split into:
  - src/utils/math.c (used by B1, C1)
  - src/utils/string.c (used by B2, D1)
  - src/utils/memory.c (used by C2)
- PARALLELIZATION GAIN: 5 serial work items → 3 parallel groups
- EFFORT: 2-3 hours to split file
- RECOMMENDATION: Make refactoring the first dependency for all affected items
```

### Step 3: Initial Task Inventory w/ File Mapping
- List all tasks found in the plan
- Map each task to its file req
- Note their stated dependencies
- Record their estimated completion time
- **Identify file conflicts between work items**

### Step 4: File Conflict Analysis
For each task pair (A, B), perform precise file conflict detection:

**Exact File Overlap Analysis:**
- What files does Task A create/modify/delete?
- What files does Task B create/modify/delete?
- File conflict resolution:
  - No file overlap → CAN BE PARALLEL ✅
  - Same files, different functions → Needs merge coordination 🤝
  - Same files, same functions → Must be sequential ⛔
  - One creates, other modifies same file → Sequential dependency ⛔

**Function-Level Granularity:**
- Even in same file, what specific functions/classes?
- Can different sections be modified independently?
- Are there shared data structures or globals?

**Build System Analysis:**
- Do both tasks affect the same build targets?
- Are there shared config files?
- Do changes affect the same test suites?

**Semantic Analysis:**
- What does Task A accomplish?
- What does Task B accomplish?
- Does B's functionality require A's output?
  - No → Parallel (if no file conflicts) ✅
  - Yes → Sequential ⛔
  - Maybe → Needs closer analysis

### Step 5: False Dependency Detection Based on File Analysis

**Common False Dependencies to Look For:**

1. **Organizational Grouping**:
   - "All normalization operations" doesn't mean LayerNorm needs BatchNorm first
   - **File Test**: Do they modify different files? → Parallel ✅
   - Think: "Are these grouped for convenience or true dependency?"

2. **Historical Ordering**:
   - "We always did B1 before B2" doesn't mean B2 needs B1
   - **File Test**: Check actual file conflicts, not historical habit
   - Think: "Is this tradition or requirement?"

3. **Same Category ≠ Sequential**:
   - "Performance optimizations C1, C2, C3" might all be independent
   - **File Test**: Different files → Parallel, Same files → Check function level
   - Think: "Can different devs optimize different things simultaneously?"

4. **False File Dependencies**:
   - "Both modify utils.c" might be false if they modify different functions
   - **Solution**: Propose splitting utils.c into focused files
   - **Benefit**: Convert 1 sequential bottleneck into N parallel tracks

### Step 6: Execution Tier Creation

**Build Parallel Execution Tiers:**

```python
# Pseudo-algorithm for LLM to follow:
tier_1 = []
tier_2 = []
tier_3 = []

for task in all_tasks:
    if task.dependencies == ['initial_setup'] or task.dependencies == []:
        tier_1.append(task)
    elif all(dep in tier_1 for dep in task.dependencies):
        tier_2.append(task)
    elif all(dep in tier_1+tier_2 for dep in task.dependencies):
        tier_3.append(task)

# Within each tier, tasks can run in parallel
```

### Step 7: Sub-Track Generation

For each major track, ask:
1. Can this be split into independent sub-tasks?
2. What's the optimal work unit size (2-4 hours)?
3. How many developers could work on this track simultaneously?

Example reasoning:
- "Track B has 3 operations: LayerNorm, LinearProjection, KVCache"
- "LayerNorm modifies: layer_norm.comp, layer_norm bindings"
- "LinearProjection modifies: linear_projection.comp, linear bindings"
- "KVCache modifies: kv_cache_*.comp, cache bindings"
- "No file overlap → All three can be parallel!"
- "Result: B1, B2, B3 can all be claimed by different developers"

## 📚 Examples: False vs True Dependencies

### ❌ FALSE Dependencies (Can be parallelized):
1. **B1→B2→B3 (Layer Norm → Linear Projection → KV Cache)**
   - Why it looks sequential: Listed in order in plan
   - Why it's false: Modify completely different files & functions
   - Parallel potential: 3 developers can work simultaneously

2. **All of Track C waiting for all of Track B**
   - Why it looks sequential: "Performance comes after features"
   - Why it's false: Memory pooling can start anytime
   - Parallel potential: C1/C2 can start immediately after Track A

### ✅ TRUE Dependencies (Must be sequential):
1. **Attention needs Matrix Operations**
   - Why it's true: Attention literally calls matrix multiplication
   - Cannot parallelize: Would fail at runtime without matrix ops

2. **Mixed Precision needs at least one working operation**
   - Why it's true: Can't convert precision without operations to convert
   - Partial parallel: Can start after ANY B track, not ALL

## 📊 Expected Output Format

The parallelized plan should clearly show:

1. **Parallel Opportunity Summary**:
   ```
   Maximum Parallel Developers: 7
   Total Work Units: 15
   Parallel Efficiency: 70% (vs 30% in original sequential plan)
   ```

2. **Execution Tier Visualization**:
   ```
   [TIER 1 - Can Start Now]
   ├── B1 (3-4 hrs) ──┐
   ├── B2 (3-4 hrs) ──┼── All independent!
   ├── B3 (4-5 hrs) ──┘
   ├── C1 (2-3 hrs)
   ├── C2 (2-3 hrs)
   └── D1 (5-6 hrs)

   [TIER 2 - After Some Tier 1]
   ├── C3 (needs any B)
   └── D2 (needs B1+B2)
   ```

3. **Clear Ownership Boundaries**:
   - Each sub-track lists EXACTLY which files it modifies
   - No file appears in multiple parallel tracks
   - Merge coordination points clearly marked

## 🤖 Assistant Protocol Instructions

The orchestrated plan includes these critical instructions for coding assistants:

### 📖 Plan Reading Protocol
**ALWAYS REQUIRED BEFORE ANY WORK:**
```
1. Re-read the entire plan document to get current status
2. Check global plan lock status
3. Identify available work items (not claimed, dependencies met)
4. Verify no file conflicts w/ active work items
5. If working on specific requested item: check if already claimed
```

### 🔒 Plan Lock Protocol
**REQUIRED FOR ALL PLAN MODIFICATIONS:**
```
1. Check for existing lock: Look for "🔒 PLAN LOCKED BY: [session]"
2. If locked by others: Inform user, ask to retry later
3. If unlocked: Acquire lock by adding lock line at top of document
4. Make minimal required changes
5. Release lock by removing lock line
6. Never hold lock longer than necessary
```

### 📝 Work Item Selection Protocol
**When asked to work on "next available item":**
```
1. Fresh read entire plan document
2. Identify items w/ no dependencies or completed dependencies
3. Verify item not already claimed by checking ownership headers
4. Check file conflicts w/ other active work items
5. Claim item by updating ownership under plan lock
6. Begin work only after successful claiming
```

### 🚨 Conflict Resolution Protocol
**When requested work item is already claimed:**
```
1. Inform user: "Work item X is currently claimed by [session]"
2. Check timestamp - if >4 hours old, offer to reclaim
3. Suggest alternative available work items
4. Wait for user decision before proceeding
```

### 📊 Plan Compaction Protocol
**After completing work items:**
```
1. Move completed detailed work items to "COMPLETED WORK" section
2. Replace w/ summary: "✅ [Item]: [Files modified] - [Brief outcome]"
3. Maintain dependency references but reduce token usage
4. Archive detailed req but keep results visible
```

## Success Criteria

A well-orchestrated plan should:
- ✅ Enable 3+ assistants to work simultaneously without file conflicts
- ✅ **Enable 5-10 assistants on granular sub-tracks without conflicts**
- ✅ Provide clear ownership & claiming mechanisms w/ file lists
- ✅ **Support partial track ownership (sub-track level)**
- ✅ Include comprehensive coordination instructions w/ plan locking
- ✅ **Identify & eliminate false dependencies based on file analysis**
- ✅ Define measurable completion criteria for all tasks w/ file valid8n
- ✅ **Show parallel execution opportunities visually**
- ✅ Establish clear dependency chains & convergence points
- ✅ **Provide work unit size estimates for better planning**
- ✅ Include quality gates & valid8n procedures
- ✅ **Include refactoring recommendations to unlock parallelization**
- ✅ Provide escalation paths for blocking issues
- ✅ **Calculate & display parallelization efficiency metrics**
- ✅ **Enforce global plan lock for all document updates**
- ✅ **Require fresh plan reading before any work or claiming**
