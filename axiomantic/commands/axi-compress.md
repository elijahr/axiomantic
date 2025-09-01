# /axi-compress - Token-Efficient Text Compression

Apply advanced axitxt compression for maximum token efficiency while preserving semantic meaning to: **$ARGUMENTS**

## Core Philosophy

Compress English text for LLM consumption while maintaining semantic clarity. Target: 35-50% token reduction.

🚨 **COMPRESSION ONLY - NO ADDITIONS**: Only remove or replace text. Never add new words, emojis, or content not present in the original.

Modify the file in-place and ensure the compression algorithm is fully adhered to.

## Preface for LLM Documents

"This document uses axitxt compression: standard abbreviations, txtspeak shortcuts, emoji symbols for concepts, and omitted articles/pronouns where context is clear."

## Compression Rules (Apply in Order)

### 1. Article & Filler Word Removal

- Drop: the, a, an, that, this, these, those
- Drop: of, in, on, at, for, with, by (when context clear)
- Drop: is, are, was, were (when not essential)
- Drop pronouns when context clear: it, they, them, their, its, his, her, he, she, we, us, our

**Examples:**

- "the implementation of the feature" → "implementation feature"
- "this code is readable" → "code readable"
- "When you complete it, check the results" → "When complete, check results"
- "The function returns its value" → "Function returns value"
- "Users should validate their input" → "Users should validate input"

### 2. Emoji Substitution

**Priority Concepts:**

- Mandatory/Critical → 🚨
- Warning/Caution → ⚠️
- Validation/Check/Correct → ✅
- Invalid/Wrong/Fail → ❌
- Planning/Documentation → 📋
- Process/Procedure → 🔄
- Pause/Stop → ⏸️
- Resume/Start/Continue → ▶️
- Concept/Insight → 💡
- Goal/Objective → 🎯
- Search/Examine/Review → 🔍
- Implementation/Build/Tools → 🛠️
- Performance/Speed/Fast → ⚡
- Security → 🔒
- Question/Ask → ❓
- File/Directory → 📁
- Fix/Repair → 🔧
- Data/Analytics/Metrics → 📊
- Network/Web/API → 🌐
- Save/Store/Database → 💾
- Write/Edit/Create → 📝
- Deploy/Launch/Release → 🚀
- To → '→'
- From → '←'
- Settings/Config → ⚙️
- Package/Module/Bundle → 📦
- Key/Token/Auth → 🔑
- Time/Schedule/Cron → ⏰
- Link/Reference/Dependency → 🔗
- Growth/Scale/Increase → 📈
- Bug/Defect → 🐛
- Architecture/Structure → 🏗️
- Merge/Combine → 🔀
- New/Feature/Enhancement → ✨
- Export/Output/Send → 📤
- Import/Input/Receive → 📥
- Style/UI/Design → 🎨
- Test/Experiment → 🧪

### 3. Standard Abbreviations

**Technical Terms:**

- implementation → impl
- documentation → docs
- configuration → config
- validation → valid8n
- performance → perf
- security → sec
- project → proj
- technical → tech
- instructions → instr
- guidelines → guidel
- requirements → req
- architecture → arch
- development → dev
- function → func
- variable → var
- message → msg
- information → info
- significant → signif
- appropriate → appropr8
- environment → env
- language → lang
- programming → prog
- application → app
- system → sys
- service → svc
- database → db
- interface → iface
- directory → dir
- repository → repo
- component → comp
- framework → fwk
- example → ex
- parameter → param
- argument → arg
- maximum → max
- minimum → min
- initialize → init
- execute → exec
- generate → gen
- reference → ref
- specification → spec
- temporary → temp
- version → ver
- standard → std
- extension → ext
- javascript → js
- typescript → ts
- python → py
- command → cmd
- library → lib
- utility → util
- error → err
- warning → warn
- number → num
- string → str
- object → obj
- array → arr
- boolean → bool
- integer → int
- character → char
- length → len
- count → cnt
- value → val
- authentication → auth
- authorization → authz
- response → resp
- endpoint → ep
- namespace → ns
- identifier → id
- unique → uniq
- duplicate → dup
- transaction → txn
- connection → conn
- session → sess
- template → tmpl
- document → doc
- element → elem
- attribute → attr
- property → prop
- method → mthd

**Common Words:**

- with → w/
- without → w/o
- within → w/in
- and → &
- you → u (sparingly)
- your → ur (sparingly)
- because → bc
- before → b4 (sparingly)
- great → gr8
- straight → str8
- later → l8r
- about → abt
- through → thru
- between → btwn
- something → sth
- around → ~
- approximately → ~
- against → vs
- towards → 2ward
- against → vs
- really → rly

### 4. Strategic Vowel Reduction

Only when context makes meaning clear:

- establish → establsh
- potential → potenti
- definitely → definit
- management → mgmt
- consistent → consistnt
- between → btwn

### 5. Number Substitution

- to/too → 2 (context dependent)
- for → 4 (context dependent)
- ate/eight → 8 (validation → valid8n)

### 6. Punctuation Simplification

- Drop periods & semicolons at end of lines (before newline)
- Keep punctuation within sentences & lists
- Preserve question marks & exclamation points for meaning

**Examples:**

- "This is a complete sentence." → "This is a complete sentence"
- "Follow these steps: first, second, third." → "Follow these steps: first, second, third"
- "Is this correct?" → "Is this correct?" (keep question mark)

### 7. Common Phrase Compression

- "in order to" → "2"
- "as well as" → "&"
- "for example" / "such as" → "e.g."
- "and so on" / "and so forth" → "etc"
- "instead of" → "not" (context dependent)
- "in addition to" → "&"
- "out of" → "from" (when clear)
- "more than" → ">" (in comparisons)
- "less than" → "<" (in comparisons)
- "equal to" → "=" (in comparisons)
- "different from" → "≠" (when comparing)

### 8. Modal Verb Compression

- "should be" → "shld"
- "must be" → "must" (drop "be")
- "will be" → "will" (drop "be")
- "would be" → "wld"
- "could be" → "cld"
- "might be" → "mght"
- "can be" → "can" (drop "be")

### 9. Advanced Abbreviation Safety Rules

**Ambiguity Prevention:**

- Never compress if abbreviation matches >1 common word
- Keep minimum 3 chars for technical terms (unless universally known like "dev")
- Test each abbreviation in isolation - is meaning clear?
- Maintain word boundaries - don't compress across word breaks
- Preserve critical negatives (never, not, don't) exactly

**Context Assessment Criteria:**

- Is the full concept mentioned earlier in paragraph?
- Are there contextual clues within same sentence?
- Would a domain expert understand the abbreviation immediately?
- If unsure, don't compress

**Technical Term Hierarchy:**

- Universal tech terms: OK to compress aggressively (dev, impl, config)
- Domain-specific terms: Moderate compression (valid8n, perf)
- Ambiguous terms: Light compression only (mgmt → management)

### 10. Emoji Efficiency Rules

🚨 **CRITICAL: NO DECORATIVE EMOJIS**

- ONLY use emojis from the Priority Concepts list in section 2
- Emojis must REPLACE words, never be additions or prefixes
- NEVER add emojis that weren't in the original text
- NEVER use emojis for decoration, emphasis, or visual appeal
- If a word doesn't have a specific emoji replacement in section 2, don't add one
- Remove any existing decorative or emphasis emojis that don't replace words

**Valid emoji usage:**
- "This is mandatory" → "This is 🚨" (emoji replaces word)
- "Performance issues" → "⚡ issues" (emoji replaces word)

**INVALID emoji usage:**
- Adding 🎯 to headings for decoration
- Adding ✨ for emphasis
- Adding ⏸️ before "pause" when "pause" should just *become* "⏸️"

### 11. Formatting Minimization

- Drop unnecessary bold/italic formatting that doesn't add semantic value
- Remove redundant emphasis markers (_NEVER_ → NEVER)
- Keep formatting only when it changes meaning (quotes for literal examples)
- Eliminate decorative formatting that wastes tokens

### 12. Compound Compression Prevention

**Never apply multiple compression rules to same word:**

- "implementation" → "impl" (stop here, don't vowel-reduce)
- "validation" → "valid8n" (stop here, don't abbreviate further)
- Choose the MOST effective single compression per word

### 13. Sentence Structure Preservation

- Maintain at least one grammatical anchor per sentence (subject or main verb)
- Keep verb tenses clear through context or minimal words
- Preserve logical connectors (but, however, therefore → but, however, therefore)
- Don't compress sentence boundaries (periods in lists, etc.)

### 14. Domain-Specific Vocabulary Rules

- Create domain glossaries for specialized fields
- Use industry-standard abbreviations when they exist
- When in doubt, use the abbreviation the target audience would recognize
- For mixed audiences, favor clarity over compression

### 15. Long Document Scalability

**For documents >500 words:**

- Establish abbreviation consistency - make abbreviation choices early and stick to them
- Consider a mini-glossary at the top for unusual abbreviations
- Use section headers as context anchors
- Repeat full terms occasionally to maintain context

### 16. Error Recovery Mechanisms

- Provide redundant context cues where critical
- Use parallel structure to reinforce meaning
- Include full terms alongside abbreviations in critical sections
- Test comprehension with sample passages

## Advanced Quality Assurance

### Pre-Compression Analysis

1. **Identify critical terms** that must remain unambiguous
2. **Map abbreviation conflicts** - list all potential meanings
3. **Establish context anchors** - key full terms to preserve
4. **Set compression targets** by section priority

### Post-Compression Validation

1. **Read aloud test** - does it sound natural when spoken?
2. **Cold read test** - can someone unfamiliar understand it?
3. **Context isolation test** - do abbreviated sections make sense alone?
4. **LLM interpretation test** - feed to different AI and check understanding

### Compression Strategy Selection

**Aggressive (45-50% reduction):** Internal docs, familiar audiences
**Moderate (35-40% reduction):** Mixed audiences, technical docs
**Conservative (25-30% reduction):** Public docs, legal/critical content

## Preservation Rules (DON'T Compress)

- Code examples (maintain exactly)
- File paths & URLs
- Proper nouns
- Domain-specific jargon that might be ambiguous
- Numbers & dates
- Critical distinctions (e.g., "never" vs "always")

## Context-Aware Compression

### Semantic Preservation

The compression process must maintain:
- **Logical relationships** between concepts
- **Causal chains** (if A then B relationships)
- **Technical precision** for domain-specific terms
- **Instructional clarity** for procedural content

### Audience Adaptation

**For Technical Audiences:**
- Use aggressive technical abbreviation
- Assume domain knowledge for context
- Prioritize precision over accessibility

**For Mixed Audiences:**
- Balance compression with clarity
- Include occasional full terms for context
- Use universal abbreviations primarily

**For Documentation:**
- Maintain structural clarity
- Preserve instructional sequences
- Keep examples and code unmodified

## Quality Checks

After compression, verify:

1. Core meaning preserved?
2. No ambiguous abbreviations?
3. Context sufficient for LLM interpretation?
4. Token reduction achieved?
5. Repeat as necessary on compressed output

## Testing Protocol

1. Compress section by section
2. Estimate token savings for each section
3. Review for clarity and comprehension
4. Test with different complexity levels
5. Validate semantic preservation

**Success Criteria:**
- ✅ 35-50% token reduction achieved
- ✅ Semantic meaning fully preserved
- ✅ Context remains clear for intended audience
- ✅ No critical information lost
- ✅ Technical precision maintained