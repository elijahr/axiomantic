# /axi-compress - Token-Efficient Text Compression

Apply advanced axitxt compression for maximum token efficiency while preserving semantic meaning to: **$ARGUMENTS**

> **💡 Best Results**: Apply these rules systematically to achieve 35-50% token reduction while maintaining full semantic clarity.

## 🚨 CRITICAL RULES

**COMPRESSION ONLY - NO ADDITIONS**: Only remove or replace text. Never add new words, emojis, or content not present in the original.

**DIRECT TOOL USAGE**: Use `read_file` and `replace_string_in_file` tools to perform compression. Do NOT create automation scripts or external programs.

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

**FORBIDDEN**: No decorative emojis or additions for emphasis, only word replacements from this list. Remove all other emojis unless absolutely necessary for context.

### 3. Standard Abbreviations

- about → abt | access → acc | account → acct | activate → activ
- additional → addl | address → addr | administration → admin | advanced → adv
- algorithm → algo | analysis → analysis | and → & | annotation → annot
- application → app | approximately → ~ | architecture → arch | argument → arg
- assignment → assign | attribute → attr | authentication → auth | automatic → auto
- available → avail | average → avg | background → bg | backup → bkp
- battery → bat | because → bc | between → btwn | binary → bin
- browser → br | buffer → buf | business → biz | button → btn
- calculation → calc | calendar → cal | capacity → cap | category → cat
- certificate → cert | character → char | chapter → ch | check → chk
- client → cli | collection → coll | column → col | command → cmd
- comment → cmt | communication → comm | company → co | comparison → comp
- complete → comp | component → comp | computer → comp | condition → cond
- configuration → config | connection → conn | construction → constr | container → cont
- content → cont | context → ctx | control → ctrl | convert → conv
- coordinate → coord | coordination → coord | corporation → corp | create → cr8 | current → curr
- customer → cust | data → dat | database → db | deactivate → deactiv
- debug → dbg | decimal → dec | default → def | definition → def
- delete → del | department → dept | description → desc | destination → dest
- development → dev | device → dev | dictionary → dict | different → diff
- dimension → dim | directory → dir | disable → dis | display → disp
- distance → dist | document → doc | documentation → docs | download → dl
- duplicate → dup | element → elem | email → em | enable → en
- encoding → enc | environment → env | error → err | event → evt
- example → ex | exchange → exch | executable → exe | execute → exec
- extension → ext | feature → feat | field → fld | file → fl
- filter → flt | format → fmt | framework → fwk | frequency → freq
- function → func | general → gen | generation → gen | government → govt
- graphic → gfx | group → grp | hardware → hw | header → hdr
- height → ht | history → hist | hour → hr | identifier → id
- image → img | implementation → impl | import → imp | include → inc
- individual → indiv | information → info | initialize → init | input → inp
- installation → install | instruction → instr | integration → integ | interface → iface
- internal → int | international → intl | internet → inet | language → lang
- length → len | library → lib | license → lic | limit → lmt
- location → loc | machine → mach | management → mgmt | manufacturer → mfr
- maximum → max | maybe → mayB | memory → mem | message → msg
- method → meth | minimum → min | minute → min | mobile → mob
- modification → mod | module → mod | monitor → mon | multiple → mult
- national → natl | navigation → nav | necessary → nec | network → net
- notification → notif | number → num | object → obj | operation → op
- optimization → opt | optional → opt | organization → org | original → orig
- output → out | package → pkg | parameter → param | paragraph → para
- password → pwd | percentage → pct | performance → perf | permission → perm
- platform → plat | position → pos | preference → pref | pressure → pres
- previous → prev | primary → pri | priority → prio | process → proc
- processor → proc | product → prod | program → prog | programming → prog
- project → proj | property → prop | protocol → proto | public → pub
- quality → qual | quantity → qty | query → qry | question → q
- receive → recv | record → rec | reference → ref | register → reg
- release → rel | remove → rem | repository → repo | request → req
- requirement → req | resolution → res | resource → res | response → resp
- result → res | revision → rev | schema → sch | scale → sc
- schedule → sched | screen → scr | script → scr | search → srch
- second → sec | section → sect | security → sec | selection → sel
- sentence → sent | sequence → seq | server → srv | service → svc
- session → sess | setting → set | similar → sim | software → sw
- something → smth | source → src | specification → spec | specific → spec
- standard → std | statement → stmt | statistics → stats | status → stat
- string → str | structure → struct | support → supp | synchronize → sync
- system → sys | table → tbl | target → tgt | task → tsk
- technology → tech | template → tmpl | temporary → temp | terminate → term
- testing → test | text → txt | thread → thrd | through → thru
- thumbnail → thumb | timestamp → ts | title → ttl | total → tot
- transaction → txn | transfer → xfer | transform → xform | transmission → trans
- transmit → xmit | trigger → trig | understand → underst | unique → uniq
- update → upd | upload → ul | username → usr | utility → util
- validation → valid8n | value → val | variable → var | version → ver
- video → vid | virtual → virt | visible → vis | volume → vol
- warning → warn | website → web | week → wk | weight → wt
- width → wd | window → win | with → w/ | within → w/in
- without → w/o | work → wrk | worksheet → ws | against → vs

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

### Technical Term Recognition
**Identify and preserve:**
- Command names with hyphens (axi-validate, git-commit, npm-install)
- CamelCase identifiers (MyClass, JavaScript, GitHub)
- Slash commands (/axi-validate, /help, /status)
- File extensions (.md, .py, .json)
- Version numbers (v1.0.0, Python3.9)
- Technical abbreviations that are industry standard (API, HTTP, JSON)

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
- Code examples & code blocks (maintain exactly)
- Pre-formatted text blocks (```text```, `inline code`)
- File paths & URLs
- Command names (axi-validate, axi-plan, git, npm, etc.)
- Proper nouns & brand names (GitHub, Docker, Python, etc.)
- Technical identifiers & function names
- Domain-specific jargon that might be ambiguous
- Numbers & dates
- Critical distinctions (e.g., "never" vs "always")
- Quoted strings and literals

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

## Usage & Implementation

**Direct Tool-Based Compression**: Apply compression by reading files and using `replace_string_in_file` tool to make edits systematically. Do NOT create automation scripts.

**Process:**
1. Read the target file using `read_file` tool
2. Apply compression rules section by section using `replace_string_in_file`
3. Start with adding the compression notice after the main header
4. Work through the document applying compression rules systematically
5. Validate the result maintains semantic meaning

**Examples:**
- `/axi-compress docs/README.md` → Compress README.md in place
- `/axi-compress dist/axiomantic/AGENT.md` → Compress AGENT.md in place
- `/axi-compress **$ARGUMENTS**` → Compress specified files

**Tool Usage Pattern:**
```
1. read_file(target_file)
2. replace_string_in_file(add compression notice)
3. replace_string_in_file(apply abbreviations)
4. replace_string_in_file(remove articles)
5. Continue systematically through document
```

## Success Criteria
- ✅ 35-50% token reduction achieved
- ✅ Semantic meaning fully preserved
- ✅ Context remains clear for intended audience
- ✅ No critical information lost
- ✅ Technical precision maintained
- ✅ No decorative additions made
