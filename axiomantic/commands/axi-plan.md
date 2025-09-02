# /axi-plan - Advanced Multi-Assistant Orchestration

Converts a regular plan document into a parallelizable track-based plan with comprehensive coordination instructions for multiple AI assistants working simultaneously on: **$ARGUMENTS**

> **💡 Best Results**: This command works best with LLMs that have advanced reasoning capabilities. The analysis requires critical thinking about task dependencies and parallel execution opportunities.

## 🚨 PRESERVATION PROTOCOL - MANDATORY EXECUTION

**🔥 CRITICAL: This enhances plans with 100% content preservation + detail enhancement**

**⚠️ FAILURE TO FOLLOW THESE PROTOCOLS RESULTS IN COMMAND FAILURE**

### Absolute Content Preservation Rules:
1. **COMPLETED work** (✅ status) → Can be summarized for history
2. **ACTIVE/FUTURE work** → Preserve 100% of ALL details, specs, code examples, implementation notes
3. **Code Examples**: Every single code block, snippet, configuration example preserved exactly
4. **Implementation Details**: All technical specifications, architecture notes, API details preserved
5. **Success Criteria**: All acceptance criteria, validation steps, testing requirements preserved
6. **When in doubt** → Always preserve original content with zero loss
7. **Validation checkpoint** → Final output must be ≥100% of original size (enhanced, not reduced)

### Detail Enhancement Requirements:
- **No Generic Content**: Replace vague descriptions with specific, actionable implementation details
- **Code Examples Required**: Every work item must include relevant code examples, file structures, configurations
- **Clear Success Criteria**: Specific, measurable acceptance criteria with validation steps
- **Implementation Paths**: Detailed step-by-step implementation approaches with technical specifics
- **Architecture Details**: Specific file structures, module interactions, data flows
- **Testing Specifications**: Exact test cases, coverage requirements, validation approaches

### **Forbidden Actions** (COMMAND FAILURE IF DETECTED):
❌ **NEVER**: "Let me summarize this section..." → **COMMAND FAILS**
❌ **NEVER**: "The key points are..." → **COMMAND FAILS**
❌ **NEVER**: "This can be simplified to..." → **COMMAND FAILS**
❌ **NEVER**: Remove code examples for "brevity" → **COMMAND FAILS**
❌ **NEVER**: Replace detailed specs with high-level descriptions → **COMMAND FAILS**
❌ **NEVER**: Condense or abbreviate original technical content → **COMMAND FAILS**

### **Required Actions** (MANDATORY FOR SUCCESS):
✅ **ALWAYS**: "I am preserving this complete implementation..."
✅ **ALWAYS**: "Adding enhancement while maintaining all original details..."
✅ **ALWAYS**: "Here is the original code block plus my additions..."
✅ **ALWAYS**: Copy original content verbatim before adding enhancements
✅ **ALWAYS**: Treat every code block as sacred and untouchable
✅ **ALWAYS**: Execute all mandatory checkpoints with required outputs

### Step-by-Step Process:
1. **Analyze**: Classify each work item by status AND detail level (✅/🔄/📋/⏸️ + detailed/generic)
2. **Preserve**: Copy ALL active work content with absolute fidelity
3. **Enhance**: Add detailed implementation specifics, code examples, architecture details
4. **Organize**: Restructure for parallelization while maintaining all original detail
5. **Validate**: Confirm 100% content preservation + significant detail enhancement

## 🚨 MANDATORY PRESERVATION CHECKPOINTS

**These checkpoints MUST be executed during command execution. Failure to follow results in incomplete output.**

### **Pre-Execution Validation** (REQUIRED)
1. **Content Audit**: Count lines, code blocks, and implementation details in source
   ```
   REQUIRED OUTPUT: "Original document: [X] lines, [Y] code blocks, [Z] implementation sections"
   ```
2. **Preservation Commitment**: Explicitly acknowledge preservation requirement
   ```
   REQUIRED OUTPUT: "I commit to preserving 100% of existing content while adding enhancements"
   ```
3. **Enhancement Strategy**: Define what will be ADDED (never replaced)
   ```
   REQUIRED OUTPUT: "Enhancement strategy: Adding [specific items] without removing original content"
   ```

### **Mid-Execution Checkpoints** (REQUIRED EVERY 200 LINES)
1. **Line Count Monitoring**: Track current output size vs original
   ```
   REQUIRED OUTPUT: "Progress: [current_lines]/[target_lines] ([percentage]% of minimum target)"
   ```
2. **Content Verification**: Ensure each original code block appears in output
   ```
   REQUIRED OUTPUT: "Code blocks preserved: [count]/[total] ✅"
   ```
3. **Detail Level Check**: Verify implementation specifics are maintained
   ```
   REQUIRED OUTPUT: "Implementation details preserved: [validated sections]"
   ```

### **Post-Execution Validation** (REQUIRED)
1. **Size Requirement**: Final output MUST be ≥110% of original size
   ```
   REQUIRED OUTPUT: "Final validation: [final_lines] lines ([percentage]% of original)"
   PASS CRITERIA: percentage ≥ 110%
   ```
2. **Content Diff**: Verify no original technical content was removed
   ```
   REQUIRED OUTPUT: "Content preservation check: [status] - All original content verified"
   ```
3. **Enhancement Verification**: Confirm additions provide implementation value
   ```
   REQUIRED OUTPUT: "Enhancement validation: Added [specific improvements]"
   ```

## 🛡️ FAIL-SAFE MECHANISMS

### **Auto-Abort Triggers**:
- Output size drops below 90% of original → **IMMEDIATE STOP** and restart with preservation focus
- Generic descriptions appear without code examples → **IMMEDIATE STOP** and add specifics
- Any original code block missing → **IMMEDIATE STOP** and recover content
- Mid-execution checkpoint fails → **IMMEDIATE STOP** and validate preservation

### **Recovery Protocols**:
- If content loss detected → **MANDATORY**: Acknowledge error + restart with preservation focus
- If enhancement lacks specificity → **MANDATORY**: Add detailed code examples and test cases
- If size target missed → **MANDATORY**: Identify missing content and restore completely
- If checkpoint validation fails → **MANDATORY**: Return to last successful checkpoint

### **Quality Gates** (MUST PASS):
- ✅ **Gate 1**: Pre-execution audit completed with commitment statement
- ✅ **Gate 2**: All mid-execution checkpoints passed with content verification  
- ✅ **Gate 3**: Final output ≥110% original size with all content preserved
- ✅ **Gate 4**: Enhancement adds implementation value without generic content

## What This Command Does

**Input**: Sequential plan with work items (detailed or generic)
**Output**: Refactoring-first parallel execution plan + all original content preserved + enhanced detail

### Primary Functions:
1. **Lossless Content Preservation** - Every detail, code example, specification preserved exactly
2. **Detail Enhancement** - Transform generic descriptions into specific implementation details with code examples
3. **Bottleneck Analysis** - Identifies shared files/modules blocking parallelization with specific refactoring solutions
4. **Refactoring Strategy** - Creates detailed module extraction plans with code examples and file structures
5. **File Impact Analysis** - Maps each work item to specific files with detailed modification plans
6. **Implementation Specifications** - Provides detailed implementation paths with code examples, API calls, configurations
7. **Coordination System** - Adds comprehensive locking, claiming, and progress tracking
8. **Success Criteria Definition** - Establishes specific, measurable acceptance criteria with validation steps

### Content Enhancement Requirements:
**For Existing Plans:**
- If plan lacks detail → Enhance with extensive implementation specifics, code examples, clear success criteria
- If plan is generic → Replace generic descriptions with specific technical implementations
- If plan lacks code examples → Add relevant code snippets, configuration examples, API usage patterns
- If plan lacks success criteria → Define specific, measurable acceptance criteria with validation steps

**For New Plans (No Existing Document):**
- Research-driven detailed planning with extensive implementation specifics
- Multiple code examples for each work item showing exact implementation approaches
- Detailed file structures, module interactions, data flow specifications
- Specific API documentation, configuration requirements, dependency specifications
- Clear success criteria with testing approaches and validation procedures

### 🚀 Refactoring-First Philosophy:
**Instead of working around bottlenecks → Eliminate them through strategic refactoring**
- Shared file touched by 5 tasks? → Extract into 5 focused modules
- Monolithic component blocking progress? → Split into logical sub-components
- Configuration scattered across files? → Centralize then distribute properly

## Plan Document Assessment & Enhancement

### Scenario 1: No Existing Plan Document
**Process**: Research-Driven Detailed Planning
1. **Requirements Gathering**: Work with user to understand project scope, technical requirements, constraints
2. **Research Phase**: Analyze codebase, existing patterns, technology stack, architectural decisions
3. **Detailed Planning**: Create comprehensive plan with:
   - Extensive implementation details with specific code examples
   - Detailed file structures and module interactions
   - Specific API usage patterns, configuration requirements
   - Clear success criteria with measurable acceptance tests
   - Testing strategies with specific test cases and coverage requirements
   - Architecture diagrams and data flow specifications

### Scenario 2: Existing Detailed Plan Document
**Process**: Lossless Preservation + Parallelization Enhancement
1. **Content Audit**: Verify plan contains detailed implementations, code examples, specific success criteria
2. **100% Preservation**: Maintain every detail, code example, specification exactly as written
3. **Parallelization Analysis**: Identify bottlenecks and refactoring opportunities with detailed solutions
4. **Reorganization**: Structure content for parallel execution while preserving all original detail
5. **Coordination Addition**: Add detailed multi-assistant coordination procedures

### Scenario 3: Existing Generic/Incomplete Plan Document
**Process**: Content Preservation + Massive Detail Enhancement
1. **Content Preservation**: Preserve all existing content as foundation
2. **Gap Analysis**: Identify missing details, generic descriptions, absent success criteria
3. **Research Enhancement**: Add extensive technical details through codebase analysis and research
4. **Code Example Addition**: Provide specific implementation examples for every work item
5. **Success Criteria Definition**: Establish measurable acceptance criteria with validation procedures
6. **Implementation Path Documentation**: Detail step-by-step implementation approaches with specifics

### Quality Standards for All Scenarios:
- **No Generic Descriptions**: Every work item must have specific, actionable implementation details
- **Code Examples Required**: Relevant code snippets, configuration examples, API usage patterns
- **Measurable Success Criteria**: Specific acceptance criteria with validation procedures
- **Technical Specifications**: Detailed file structures, module interfaces, data flow documentation
- **Testing Requirements**: Specific test cases, coverage expectations, validation approaches

## Execution Algorithm

### Phase 1: Analysis & Detail Assessment
```
For each work item:
1. Determine status: ✅ completed | 🔄🔄📋⏸️ active
2. Assess detail level: DETAILED (has code examples, specifics) | GENERIC (vague descriptions)
3. Map file impacts: CREATE [specific files] | MODIFY [specific files] | DELETE [specific files]
4. Identify dependencies: File conflicts | Functional requirements | Technical prerequisites
5. Evaluate enhancement needs: Missing code examples | Vague success criteria | Generic descriptions
```

### Phase 2: Content Preservation & Enhancement
```
🔥 CRITICAL: 100% Content Preservation + Detail Enhancement

**CHECKPOINT EXECUTION REQUIRED**:
1. Execute Pre-Execution Validation checkpoint
2. Preserve ALL existing detailed content with absolute fidelity
3. Execute Mid-Execution Checkpoint every 200 lines
4. Identify generic/vague content requiring enhancement
5. Research and add extensive implementation details for generic items
6. Add code examples, file structures, API specifications for all work items
7. Define specific, measurable success criteria with validation procedures
8. Document detailed implementation paths with technical specifics
9. Execute Post-Execution Validation checkpoint

**MANDATORY OUTPUTS AT EACH STEP**:
- Line count tracking with percentage validation
- Content preservation verification statements
- Enhancement documentation with specific additions
- Checkpoint passage confirmation before proceeding
```

### Phase 3: Refactoring-First Parallelization
```
🔥 PRIORITY: Detailed Refactoring Opportunities with Code Examples
1. Scan for shared file bottlenecks → Design detailed extraction with code examples
2. Detect monolithic files → Plan detailed splitting with file structures and interfaces
3. Map detailed refactoring tasks → Create "R-Track" with implementation specifics
4. Position refactoring as Tier 0 with detailed implementation guides

THEN: Enhanced Parallelization
5. Group enhanced items with no file conflicts → Create detailed parallel tracks
6. Create execution tiers with detailed implementation guides: Tier 0 → Tier 1 → Tier 2 → etc
7. Calculate max parallelization with detailed coordination procedures
```

### Phase 4: Organization & Validation
```
1. Organize enhanced content for parallel execution while preserving all details
2. Add detailed coordination sections with specific procedures
3. Enhance each work item with:
   - Track assignment with detailed responsibilities
   - Specific file ownership with modification procedures
   - Detailed dependencies and prerequisites with validation steps
   - Precise effort estimation with implementation breakdown
4. **EXECUTE POST-EXECUTION VALIDATION CHECKPOINT** (MANDATORY)
5. Validate: 100% content preservation + significant detail enhancement confirmed
6. **FINAL QUALITY GATE**: Confirm all checkpoints passed before completion

**REQUIRED FINAL OUTPUTS**:
- "Final validation: [X] lines ([Y]% of original)" where Y ≥ 110%
- "Content preservation check: PASSED - All original content verified"
- "Enhancement validation: Added [specific technical improvements]"
- "All quality gates: PASSED ✅"
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

### Document Locking Protocol
Each assistant must establish exclusive locks before modifying shared documents:

1. **Lock Acquisition**: Add `<!-- LOCKED: [Assistant-ID]_[Timestamp] -->` at document start
2. **Exclusive Access**: Only lock holder may modify document content
3. **Lock Release**: Remove lock marker when work complete or paused
4. **Conflict Resolution**: Later timestamps override earlier ones after 30min timeout
5. **Emergency Override**: Use `<!-- EMERGENCY_UNLOCK: [Reason] -->` for critical fixes

### Track Claiming System
- Assistants claim work tracks using unique identifiers: `PLAN_[YYYYMMDD]_[HHMM]_[4-char-hash]`
- Track assignments recorded in plan header with claiming assistant details
- Active tracks marked with `🔄 CLAIMED: [Assistant-ID]` in track headers
- Track handoff requires explicit release by current owner and acceptance by new owner
- Progress updates maintained in dedicated coordination log section

### File Ownership Rules
- Each file can have only ONE primary owner during active development
- Owner responsible for all modifications, integration, and conflict resolution
- Ownership changes require coordination through plan document updates
- Emergency modifications allowed with immediate owner notification and justification
- Shared files require pre-coordination or refactoring into owner-specific modules

## 📊 Execution Tracks

### 🔥 Track R: Refactoring Foundation (Tier 0 - Execute First)
- R1: [Refactoring Task] - Extract: [modules] - Enables: [tracks] - Effort: [hours]
- R2: [Refactoring Task] - Split: [monolith] - Enables: [tracks] - Effort: [hours]

### Track A: [Description] (Tier 1 - After R-Track)
- A1: [Work Item] - Files: [focused modules] - Effort: [hours]
- A2: [Work Item] - Files: [focused modules] - Effort: [hours]

### Track B: [Description] (Tier 1 - Parallel with Track A)
- B1: [Work Item] - Files: [focused modules] - Effort: [hours]

[ORIGINAL PLAN CONTENT - ALL PRESERVED WITH 100% FIDELITY]
[PLUS: EXTENSIVE DETAIL ENHANCEMENTS]
- All original code examples, specifications, technical details preserved exactly
- Generic descriptions enhanced with specific implementation details and code examples
- Vague success criteria replaced with measurable acceptance criteria and validation procedures
- Implementation paths detailed with step-by-step technical guidance and code samples
- Architecture specifications enhanced with detailed file structures and module interfaces
Enhanced with parallelization metadata alongside comprehensive implementation details
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

## Success Criteria - MANDATORY ACHIEVEMENTS

### **Core Success Requirements** (MUST ACHIEVE ALL):
- ✅ **100% Content Preservation**: Every detail, code example, specification from original plan preserved exactly
- ✅ **Size Requirement**: Final output ≥110% of original size through meaningful enhancement
- ✅ **All Checkpoints Passed**: Pre-execution, mid-execution, and post-execution validations completed
- ✅ **Zero Content Loss**: No original technical content removed or condensed
- ✅ **Extensive Detail Enhancement**: Generic descriptions replaced with specific implementation details and code examples
- ✅ **Clear Success Criteria**: Every work item has measurable acceptance criteria with validation procedures
- ✅ **Implementation Specifics**: Detailed technical guidance with code examples, file structures, API specifications

### **Enhancement Quality Requirements**:
- ✅ **Refactoring opportunities identified and planned as detailed Tier 0 work with implementation examples**
- ✅ **Post-refactoring: 4+ assistants can work simultaneously without conflicts using detailed coordination procedures**
- ✅ **Focused, single-responsibility modules enable clean parallel work with specific implementation guides**
- ✅ **Research-driven enhancement** for inadequate plans with extensive technical detail addition
- ✅ **Clear file ownership preventing conflicts with detailed modification procedures**
- ✅ **Realistic refactoring estimates with detailed implementation breakdown (typically 4-8 hours upfront investment)**
- ✅ **Comprehensive coordination instructions with specific procedures and protocols**
- ✅ **No generic content**: Every description actionable and specific with implementation details
- ✅ **3-5x parallelization improvement through strategic refactoring with detailed implementation guidance**

### **Quality Gate Validation** (FINAL CHECKPOINT):
- ✅ **Gate 1**: Pre-execution audit completed with commitment statement
- ✅ **Gate 2**: All mid-execution checkpoints passed with content verification  
- ✅ **Gate 3**: Final output ≥110% original size with all content preserved
- ✅ **Gate 4**: Enhancement adds implementation value without generic content
- ✅ **Gate 5**: All forbidden actions avoided, all required actions executed

**COMMAND SUCCESS**: All success criteria achieved + All quality gates passed
**COMMAND FAILURE**: Any success criteria failed OR any quality gate failed

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

**Original Work Items with Bottleneck (Generic Content):**
```
Task A: Add user authentication to UserComponent.js
Task B: Add user preferences to UserComponent.js
Task C: Add user profile editing to UserComponent.js
```

**Enhanced with Refactoring-First Approach + Detailed Implementation:**

**PRESERVATION CHECKPOINT**: Original 3 generic work items preserved below, then enhanced with detailed implementation:

**ORIGINAL CONTENT (PRESERVED)**:
```
Task A: Add user authentication to UserComponent.js
Task B: Add user preferences to UserComponent.js  
Task C: Add user profile editing to UserComponent.js
```

**ENHANCED VERSION** (Original content + comprehensive implementation details):
````
🔥 TIER 0 - Refactoring Foundation:
## R1: Split UserComponent into Focused Modules

**Detailed Refactoring Implementation:**
Extract UserComponent.js into focused, single-responsibility modules:

**UserAuth.js** - Authentication Logic:
```javascript
import { useState, useEffect } from 'react';
import { authAPI } from '../api/auth';

export const useAuthentication = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  const login = async (credentials) => {
    const response = await authAPI.login(credentials);
    setUser(response.user);
    localStorage.setItem('authToken', response.token);
    return response;
  };

  const logout = () => {
    setUser(null);
    localStorage.removeItem('authToken');
  };

  return { user, login, logout, loading };
};
```

**UserProfile.js** - Profile Management:
```javascript
import { useState } from 'react';
import { profileAPI } from '../api/profile';

export const UserProfile = ({ userId }) => {
  const [profile, setProfile] = useState(null);
  const [editing, setEditing] = useState(false);

  const updateProfile = async (profileData) => {
    const updatedProfile = await profileAPI.update(userId, profileData);
    setProfile(updatedProfile);
    setEditing(false);
  };

  return (
    <div className="user-profile">
      {editing ? (
        <ProfileEditForm
          profile={profile}
          onSave={updateProfile}
          onCancel={() => setEditing(false)}
        />
      ) : (
        <ProfileDisplay
          profile={profile}
          onEdit={() => setEditing(true)}
        />
      )}
    </div>
  );
};
```

**UserPreferences.js** - Settings/Preferences:
```javascript
import { useReducer, useEffect } from 'react';
import { preferencesAPI } from '../api/preferences';

const preferencesReducer = (state, action) => {
  switch (action.type) {
    case 'SET_THEME':
      return { ...state, theme: action.payload };
    case 'SET_NOTIFICATIONS':
      return { ...state, notifications: action.payload };
    case 'SET_LANGUAGE':
      return { ...state, language: action.payload };
    default:
      return state;
  }
};

export const UserPreferences = ({ userId }) => {
  const [preferences, dispatch] = useReducer(preferencesReducer, {
    theme: 'light',
    notifications: true,
    language: 'en'
  });

  const savePreferences = async () => {
    await preferencesAPI.update(userId, preferences);
  };

  return (
    <PreferencesPanel
      preferences={preferences}
      dispatch={dispatch}
      onSave={savePreferences}
    />
  );
};
```

**UserCore.js** - Shared Base Functionality:
```javascript
export const UserContext = createContext();

export const UserProvider = ({ children }) => {
  const auth = useAuthentication();
  const [profile, setProfile] = useState(null);

  useEffect(() => {
    if (auth.user) {
      profileAPI.get(auth.user.id).then(setProfile);
    }
  }, [auth.user]);

  return (
    <UserContext.Provider value={{ auth, profile, setProfile }}>
      {children}
    </UserContext.Provider>
  );
};
```

**File Structure:**
```
src/
  components/
    user/
      UserAuth.js          (authentication logic)
      UserProfile.js       (profile management)
      UserPreferences.js   (settings/preferences)
      UserCore.js         (shared context/provider)
      index.js            (clean exports)
  api/
    auth.js               (authentication API calls)
    profile.js            (profile API calls)
    preferences.js        (preferences API calls)
```

**Detailed Parallel Execution Metadata:**
- Track: R1 (Foundation - MUST complete first)
- Files: CREATE [UserAuth.js, UserProfile.js, UserPreferences.js, UserCore.js, api/auth.js, api/profile.js, api/preferences.js], MODIFY [UserComponent.js → remove and replace with index.js]
- Dependencies: None (start immediately)
- Effort: 3-4 hours
- Success Criteria: All tests pass, TypeScript compilation successful, no breaking changes to existing components
- Testing Requirements: Unit tests for each module, integration tests for context provider
- Enables: Tracks A, B, C to run in parallel

TIER 1 - Parallel Execution (After R1 Completion):
## A1: Implement User Authentication Features
[ALL ORIGINAL CONTENT PRESERVED - Enhanced with Implementation Details]

**Detailed Implementation Specification:**
Add comprehensive user authentication features with secure token management:

**Features to Implement:**
- Multi-factor authentication support
- Password reset flow with email verification
- Remember me functionality with secure token refresh
- Social login integration (Google, GitHub)

**API Integration:**
```javascript
// src/api/auth.js enhancements
export const authAPI = {
  login: async (credentials) => {
    const response = await fetch('/api/auth/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(credentials)
    });
    return response.json();
  },

  setupMFA: async (userId) => {
    return await fetch(`/api/auth/mfa/setup/${userId}`, {
      method: 'POST',
      headers: { 'Authorization': `Bearer ${getToken()}` }
    });
  },

  resetPassword: async (email) => {
    return await fetch('/api/auth/reset', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email })
    });
  }
};
```

**Success Criteria:**
- Authentication flow handles all error states gracefully
- Token refresh works seamlessly without user interruption
- MFA setup completes successfully with QR code generation
- Password reset emails delivered and processed correctly
- Social login redirects work without CSRF vulnerabilities
- All authentication tests pass with >90% coverage

**Detailed Parallel Execution Metadata:**
- Track: A1 (can run parallel with B1, C1)
- Files: UserAuth.js (focused implementation, no conflicts with other tracks)
- Dependencies: R1 completion (refactored modules available)
- Effort: 2-3 hours
- Testing: Authentication integration tests, security validation, error handling tests

## B1: Implement User Preferences Management
[ALL ORIGINAL CONTENT PRESERVED - Enhanced with Implementation Details]

**Detailed Implementation Specification:**
Build comprehensive user preferences system with real-time updates:

**Preferences Categories:**
- Theme customization (light/dark/auto, color schemes)
- Notification settings (email, push, in-app preferences)
- Language and localization preferences
- Privacy settings and data sharing controls

**Implementation Details:**
```javascript
// Enhanced preferences with validation and persistence
const preferencesSchema = {
  theme: {
    mode: ['light', 'dark', 'auto'],
    colorScheme: ['default', 'blue', 'green', 'purple'],
    customColors: { primary: '#color', secondary: '#color' }
  },
  notifications: {
    email: boolean,
    push: boolean,
    inApp: boolean,
    frequency: ['immediate', 'daily', 'weekly']
  },
  privacy: {
    profileVisibility: ['public', 'private', 'friends'],
    dataSharing: boolean,
    analyticsOptOut: boolean
  }
};

// Real-time synchronization
export const usePreferencesSync = (userId) => {
  const [preferences, setPreferences] = useState(null);

  useEffect(() => {
    const websocket = new WebSocket(`/ws/preferences/${userId}`);
    websocket.onmessage = (event) => {
      const updatedPreferences = JSON.parse(event.data);
      setPreferences(updatedPreferences);
    };
    return () => websocket.close();
  }, [userId]);

  return preferences;
};
```

**Success Criteria:**
- Preferences save and sync across devices in real-time
- Theme changes apply immediately without page refresh
- Notification preferences integrate with backend notification service
- Privacy settings enforce data access controls
- Preferences export/import functionality works correctly
- All preference validation rules enforced

**Detailed Parallel Execution Metadata:**
- Track: B1 (can run parallel with A1, C1)
- Files: UserPreferences.js (isolated implementation, no file conflicts)
- Dependencies: R1 completion (refactored modules available)
- Effort: 2-3 hours
- Testing: Preferences persistence tests, real-time sync validation, UI interaction tests

## C1: Implement Profile Editing System
[ALL ORIGINAL CONTENT PRESERVED - Enhanced with Implementation Details]

**Detailed Implementation Specification:**
Create comprehensive profile management with validation and media upload:

**Profile Features:**
- Personal information editing with validation
- Profile photo upload with image processing
- Social links management
- Professional information sections
- Privacy controls for profile visibility

**Implementation with Validation:**
```javascript
// Profile editing with comprehensive validation
const profileValidationRules = {
  displayName: { required: true, minLength: 2, maxLength: 50 },
  email: { required: true, pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/ },
  phone: { pattern: /^\+?[\d\s-()]+$/, optional: true },
  bio: { maxLength: 500 },
  website: { pattern: /^https?:\/\/.+/, optional: true }
};

export const ProfileEditor = ({ userId, initialProfile }) => {
  const [profile, setProfile] = useState(initialProfile);
  const [errors, setErrors] = useState({});
  const [saving, setSaving] = useState(false);

  const validateField = (field, value) => {
    const rule = profileValidationRules[field];
    if (!rule) return null;

    if (rule.required && !value) return `${field} is required`;
    if (rule.minLength && value.length < rule.minLength)
      return `${field} must be at least ${rule.minLength} characters`;
    if (rule.maxLength && value.length > rule.maxLength)
      return `${field} must be no more than ${rule.maxLength} characters`;
    if (rule.pattern && !rule.pattern.test(value))
      return `${field} format is invalid`;

    return null;
  };

  const handleSave = async () => {
    setSaving(true);
    try {
      const validatedProfile = await profileAPI.update(userId, profile);
      setProfile(validatedProfile);
      showSuccessMessage('Profile updated successfully');
    } catch (error) {
      setErrors(error.fieldErrors || {});
      showErrorMessage('Failed to update profile');
    } finally {
      setSaving(false);
    }
  };

  return (
    <ProfileForm
      profile={profile}
      errors={errors}
      saving={saving}
      onFieldChange={handleFieldChange}
      onSave={handleSave}
    />
  );
};
```

**Media Upload Implementation:**
```javascript
// Profile photo upload with processing
export const ProfilePhotoUpload = ({ userId, onUploadComplete }) => {
  const handleFileUpload = async (file) => {
    const formData = new FormData();
    formData.append('photo', file);
    formData.append('userId', userId);

    const response = await fetch('/api/profile/photo', {
      method: 'POST',
      body: formData,
      headers: { 'Authorization': `Bearer ${getToken()}` }
    });

    const result = await response.json();
    onUploadComplete(result.photoUrl);
  };

  return (
    <ImageUpload
      onUpload={handleFileUpload}
      acceptedTypes={['image/jpeg', 'image/png', 'image/webp']}
      maxSize={5 * 1024 * 1024} // 5MB limit
      cropAspectRatio={1} // Square crop
    />
  );
};
```

**Success Criteria:**
- Profile validation prevents invalid data submission
- Photo upload processes images correctly (resize, crop, format conversion)
- All form fields save and display correctly
- Profile changes reflect immediately in other components
- Privacy settings control profile visibility appropriately
- Profile data exports correctly in multiple formats
- All profile editing tests pass with full coverage

**Detailed Parallel Execution Metadata:**
- Track: C1 (can run parallel with A1, B1)
- Files: UserProfile.js (isolated implementation, no conflicts with authentication or preferences)
- Dependencies: R1 completion (refactored modules available)
- Effort: 2-3 hours
- Testing: Form validation tests, file upload tests, profile display tests

🎯 Result: 4 hours detailed refactoring → 3 parallel tracks with comprehensive implementation guides → 6-7 hours total vs 9+ hours sequential, with extensive technical detail and clear success criteria for each track
````
