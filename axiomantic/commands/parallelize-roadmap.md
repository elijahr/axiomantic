# Parallelize Roadmap

Converts a regular roadmap document into a parallelizable track-based roadmap with comprehensive coordination instructions for multiple AI assistants working simultaneously.

> **💡 Best Results**: This command works best with LLMs that have advanced reasoning capabilities. The analysis requires critical thinking about task dependencies and parallel execution opportunities.

## Usage

```
/parallelize-roadmap [input_file] [output_file]
```

**Parameters:**
- `input_file`: Path to existing roadmap file (default: ROADMAP.md)
- `output_file`: Path for parallelized output (default: ROADMAP_PARALLEL.md)

**Example:**
```
/parallelize-roadmap ROADMAP.md ROADMAP.md
/parallelize-roadmap docs/project-plan.md ROADMAP.md
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

1. **Analyzes Dependencies**: Identifies task dependencies and creates dependency chains
2. **Creates Parallel Tracks**: Groups independent tasks into parallel execution tracks
3. **Detects False Dependencies**: Identifies tasks marked sequential but actually independent
4. **Creates Sub-Track Granularity**: Breaks large tracks into parallel sub-tasks
5. **Adds Coordination System**: Inserts comprehensive multi-assistant coordination instructions
6. **Defines Convergence Points**: Identifies where tracks must synchronize
7. **Establishes Ownership Model**: Creates session-based track claiming system
8. **Adds Progress Tracking**: Inserts detailed progress metrics and validation

## Generated Instructions Include

### 🏷️ Track Ownership System
- **Session ID Generation**: Format `name_randomword_number` (e.g., `claude_zebra_392`)
- **Claiming Process**: Edit track headers with owner session ID
- **Stalled Work Handling**: Instructions for taking over abandoned claimed tracks
- **Release Protocol**: When and how to release track ownership
- **Conflict Resolution**: What to do when multiple assistants claim same track

### 📋 Track Management Protocol
- **Availability Checking**: How to determine if tracks are truly available vs blocked
- **Dependency Validation**: Verify prerequisite tracks are actually complete
- **Convergence Points**: Named synchronization points where tracks must wait
- **Progress Validation**: How to verify track completion before releasing dependencies
- **Rollback Procedures**: What to do if track work needs to be undone

### 🔄 Coordination Instructions
- **Status Updates**: When and how to update roadmap with progress
- **Communication Patterns**: How assistants coordinate without direct communication
- **Work Handoffs**: Protocol for passing work between assistants
- **Quality Gates**: Validation steps before marking work complete
- **Documentation Requirements**: What documentation must be maintained

### 🎯 Track Execution Guidelines
- **Work Scope Definition**: Clear boundaries for each track
- **File Ownership**: Which files each track can modify
- **Testing Requirements**: Test suites that must pass for track completion
- **Code Review Process**: Validation steps for code changes
- **Integration Points**: How track outputs integrate with other tracks

### ⚠️ Failure Handling
- **Blocked Track Protocol**: What to do when dependencies aren't met
- **Rollback Triggers**: Conditions requiring work to be undone
- **Error Recovery**: How to resume after failures
- **Escalation Paths**: When to ask for human intervention
- **Cleanup Procedures**: Maintaining repository cleanliness

### 📊 Progress Tracking System
- **Completion Metrics**: Quantitative measures of track progress
- **Status Indicators**: Visual progress indicators in roadmap
- **Milestone Definitions**: Clear completion criteria for each task
- **Validation Tests**: Automated tests confirming work completion
- **Timeline Management**: How to update and maintain realistic timelines

### 🔍 Quality Assurance
- **Code Standards**: Adherence to project coding standards
- **Test Coverage Requirements**: Minimum test coverage for track completion
- **Performance Benchmarks**: Performance criteria that must be met
- **Security Checks**: Security validation requirements
- **Documentation Standards**: Required documentation for each track

### 🚨 Critical Path Management
- **Blocker Identification**: How to identify and escalate blocking issues
- **Priority Escalation**: When to prioritize one track over others
- **Resource Allocation**: How to distribute effort across tracks
- **Risk Management**: Identifying and mitigating project risks
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
  - `balanced`: Smart parallelization with safety checks
- **Session ID Format**: Flexible session identification system
- **Status Emoji System**: Consistent visual status indicators
- **Priority Classification**: High/Medium/Low priority system
- **Convergence Point Naming**: Standardized synchronization point names

## Implementation Details

The command performs these transformations:

### 1. Header Analysis & Track Creation
- Parses existing roadmap structure
- Identifies independent task groups
- Creates parallel execution tracks (A, B, C, D, etc.)
- **Detects sub-tasks within tracks that can be parallelized**
- **Creates sub-track notation (B1.1, B1.2, B1.3 for parallel sub-tasks)**
- **Identifies "false dependencies" (tasks marked sequential but actually independent)**
- Assigns descriptive track names and priorities

### 2. Dependency Mapping
- Analyzes task dependencies from original roadmap
- **Distinguishes between "hard dependencies" (truly blocking) and "soft dependencies" (nice-to-have ordering)**
- **Creates micro-convergence points within tracks**
- **Identifies parallel work opportunities within single tracks**
- Creates dependency hierarchy diagram
- **Generates parallel execution tiers showing simultaneous work possibilities**
- Establishes convergence points for synchronization
- Validates dependency chains for circular references

### 2.5. Parallel Execution Tier Generation
- **Groups truly independent tasks into execution tiers**
- **Tier 1: All tasks that can start immediately after prerequisites**
- **Tier 2: Tasks that depend on any Tier 1 completion**
- **Creates visual representation of parallel opportunities**
- **Calculates maximum parallelization factor (how many devs can work simultaneously)**
- **Identifies critical path vs parallel paths**

### 3. Ownership System Integration
- Adds track ownership headers with session ID fields
- **Supports sub-track ownership (multiple owners per main track)**
- **Creates "work unit" size estimates (2-4 hours vs 8+ hours)**
- **Allows partial track claiming (e.g., claim B1 but not B2/B3)**
- Creates track status summary section
- **Shows parallel work availability dashboard**
- Inserts claiming/releasing instructions
- Adds stalled work recovery procedures

### 4. Progress Tracking Enhancement
- Converts tasks to trackable items with clear completion criteria
- Adds quantitative progress metrics
- Inserts validation test references
- Creates milestone definitions with success criteria

### 5. Coordination Infrastructure
- Adds comprehensive multi-assistant coordination instructions
- Creates conflict resolution procedures
- Establishes communication protocols through roadmap updates
- Defines work handoff procedures

### 6. Quality Assurance Framework
- Inserts code quality requirements
- Adds test coverage mandates
- Creates performance benchmark requirements
- Establishes documentation standards

The resulting parallelized roadmap enables multiple AI assistants to work simultaneously on different tracks while maintaining coordination, avoiding conflicts, and ensuring high-quality deliverables.

## 🔍 Granular Dependency Analysis Algorithm

### Step 1: Initial Task Inventory
- List all tasks found in the roadmap
- Note their stated dependencies
- Record their estimated completion time

### Step 2: Deep Dependency Analysis
For each task pair (A, B), ask:

**File-Level Analysis:**
- What files does Task A modify?
- What files does Task B modify?
- Is there overlap? 
  - No overlap → CAN BE PARALLEL ✅
  - Some overlap → Need coordination 🤝
  - Complete overlap → Must be sequential ⛔

**Code-Level Analysis:**
- What functions/classes does Task A touch?
- What functions/classes does Task B touch?
- Even in same file, do they touch same code?
  - Different functions → Possibly parallel with merge coordination
  - Same functions → Likely sequential

**Semantic Analysis:**
- What does Task A accomplish?
- What does Task B accomplish?
- Does B's functionality require A's output?
  - No → Parallel ✅
  - Yes → Sequential ⛔
  - Maybe → Needs closer analysis

### Step 3: False Dependency Detection

**Common False Dependencies to Look For:**

1. **Organizational Grouping**: 
   - "All normalization operations" doesn't mean LayerNorm needs BatchNorm first
   - Think: "Are these grouped for convenience or true dependency?"

2. **Historical Ordering**:
   - "We always did B1 before B2" doesn't mean B2 needs B1
   - Think: "Is this tradition or requirement?"

3. **Same Category ≠ Sequential**:
   - "Performance optimizations C1, C2, C3" might all be independent
   - Think: "Can different devs optimize different things simultaneously?"

### Step 4: Execution Tier Creation

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

### Step 5: Sub-Track Generation

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
   - Why it looks sequential: Listed in order in roadmap
   - Why it's false: Modify completely different files and functions
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

The parallelized roadmap should clearly show:

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

## Success Criteria

A well-parallelized roadmap should:
- ✅ Enable 3+ assistants to work simultaneously without conflicts
- ✅ **Enable 5-10 assistants on granular sub-tracks without conflicts**
- ✅ Provide clear ownership and claiming mechanisms
- ✅ **Support partial track ownership (sub-track level)**
- ✅ Include comprehensive coordination instructions
- ✅ **Identify and eliminate false dependencies**
- ✅ Define measurable completion criteria for all tasks
- ✅ **Show parallel execution opportunities visually**
- ✅ Establish clear dependency chains and convergence points
- ✅ **Provide work unit size estimates for better planning**
- ✅ Include quality gates and validation procedures
- ✅ Provide escalation paths for blocking issues
- ✅ **Calculate and display parallelization efficiency metrics**