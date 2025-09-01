# /axi-compress - Token-Efficient Text Compression

Apply advanced axitxt compression for maximum token efficiency while preserving semantic meaning to: **$ARGUMENTS**

> **💡 Best Results**: Apply these rules systematically to achieve 35-50% token reduction while maintaining full semantic clarity.

## 🚨 CRITICAL RULES

**COMPRESSION ONLY - NO ADDITIONS**: Only remove or replace text. Never add new words, emojis, or content not present in the original.

**Document Preface Placement**: Place compression notice **after the main document header** (not at the very beginning):

*Doc is compressed: std abbrev, txtspeak shortcuts, emoji 4 concepts, & omitted articles/pronouns where context clear.*

**Placement Examples:**
- `# Main Title` → Place preface on line 3 (after title and empty line)
- Documents with subtitles → Place after subtitle and empty line
- Never interfere with the primary document header
- Always use italics to distinguish as meta-information

## Compression Algorithm (Apply in Order)

### 1. Article & Filler Word Removal
Drop when context remains clear:
- **Articles**: the, a, an, that, this, these, those
- **Prepositions**: of, in, on, at, for, with, by
- **Linking verbs**: is, are, was, were (when not essential)
- **Pronouns**: it, they, them, their, its, his, her, he, she, we, us, our

**Examples:**
- "the implementation of the feature" → "implementation feature"
- "this code is readable" → "code readable"
- "Users should validate their input" → "Users should validate input"

### 2. Emoji Substitution (Priority Concepts Only)
Replace words with specific emojis:
- Mandatory/Critical → 🚨
- Validation/Check/Correct → ✅
- Invalid/Wrong/Fail → ❌
- Process/Procedure → 🔄
- Goal/Objective → 🎯
- Implementation/Build/Tools → 🛠️
- Performance/Speed → ⚡
- Security → 🔒
- File/Directory → 📁
- Data/Analytics → 📊
- To → →
- Settings/Config → ⚙️

**FORBIDDEN**: No decorative emojis, only word replacements from this list.

### 3. Standard Abbreviations
**Technical Terms:**
- implementation → impl | documentation → docs | configuration → config
- validation → valid8n | performance → perf | development → dev
- function → func | variable → var | information → info
- environment → env | application → app | database → db
- repository → repo | framework → fwk | parameter → param

**Common Words:**
- with → w/ | without → w/o | and → & | because → bc
- through → thru | between → btwn | approximately → ~
- something → sth | against → vs

### 4. Strategic Compression
**Number/Letter Substitution:**
- to/too → 2 (context dependent) | for → 4 (context dependent)
- ate/eight → 8 (validation → valid8n)

**Punctuation Simplification:**
- Drop periods at line ends (before newline)
- Keep punctuation within sentences & lists
- Preserve question marks & exclamation points

**Common Phrase Compression:**
- "in order to" → "2" | "for example" → "e.g."
- "more than" → ">" | "less than" → "<" | "equal to" → "="

## Quality Assurance Rules

### Ambiguity Prevention
- Never compress if abbreviation matches multiple common words
- Keep minimum 3 chars for technical terms
- Test each abbreviation in isolation - is meaning clear?
- Maintain word boundaries - don't compress across word breaks
- Preserve critical negatives (never, not, don't) exactly

### Context Assessment Criteria
- Is the full concept mentioned earlier in paragraph?
- Are there contextual clues within same sentence?
- Would a domain expert understand immediately?
- **If unsure, don't compress**

### Compound Compression Prevention
**Never apply multiple compression rules to same word:**
- "implementation" → "impl" (stop here, don't vowel-reduce further)
- Choose the MOST effective single compression per word

## Preservation Rules (DON'T Compress)
- Code examples (maintain exactly)
- File paths & URLs
- Proper nouns
- Domain-specific jargon that might be ambiguous
- Numbers & dates
- Critical distinctions (e.g., "never" vs "always")

## Validation Process

### Post-Compression Checklist
1. **Read aloud test** - Does it sound natural when spoken?
2. **Cold read test** - Can someone unfamiliar understand it?
3. **Context isolation test** - Do abbreviated sections make sense alone?
4. **Token reduction check** - Achieved 35-50% reduction?
5. **Semantic preservation** - Core meaning fully intact?

### Target Compression Levels
- **Aggressive (45-50%)**: Internal docs, familiar audiences
- **Moderate (35-40%)**: Mixed audiences, technical docs
- **Conservative (25-30%)**: Public docs, critical content

## Usage
```
/axi-compress [input_file] [output_file]
```

**Example:**
```
/axi-compress docs/README.md README_compressed.md
/axi-compress PLAN.md PLAN.md  # In-place compression
```

## Success Criteria
- ✅ 35-50% token reduction achieved
- ✅ Semantic meaning fully preserved
- ✅ Context remains clear for intended audience
- ✅ No critical information lost
- ✅ Technical precision maintained
- ✅ No decorative additions made
