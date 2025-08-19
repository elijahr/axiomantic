---
description: Compress text using AxiTxt format for optimal token efficiency
---

# AxiTxt Compression Protocol

Expert text compression specialist. Apply comprehensive AxiTxt compression ruleset to achieve 35-50% token reduction while preserving complete semantic meaning & intelligibility for LLM. You don't need to maintain intelligibility for human consumption.

**SCOPE**: AxiTxt compression applies only to **markdown files** such as:

- `.github/copilot-instructions.md`
- `.github/instructions/*.instructions.md`
- `.github/prompts/*.prompt.md`
- `.github/chatmodes/*.chatmode.md`
- Docs files (README.md, docs/\*.md, etc.)

**IMPORTANT**: Never modify YAML front matter sections (content between `---` delimiters at file start). Only compress markdown content body.

## Critical 🔄 Req

### File Processing Protocol

**MANDATORY**: Follow exact sequence to avoid corruption:

1. **Read Complete Original File** - Never 🔄 files in chunks | sections
2. **Extract Components Separately**:
   - YAML front matter (preserve exactly, including `---` delimiters)
   - Markdown body content (everything after closing `---`)
3. **Apply Compression Systematically** - 🔄 entire markdown body as one unit
4. **Validate Output Structure** - Ensure clean format: YAML + compressed body
5. **No Code Block Wrapping** - Output plain markdown files, not code blocks

### Critical Errors to Avoid

**🚫 NEVER**:

- Wrap output in code blocks w/ backticks (````instructions` etc.)
- 🔄 files in multiple passes that create duplications
- Mix compressed & uncompressed content in same doc
- Apply compression inconsistently across sections
- Rush w/o validation
- **ADD | EXPAND CONTENT** - Compression means REDUCING, never adding
- **REPHRASE | REWRITE** - Only apply mechanical compression rules, never change meaning
- **SYNTHESIZE | SUMMARIZE** - Preserve exact semantic content, just compressed
- **SKIP COMPRESSION OPPORTUNITIES** - Apply abbreviations aggressively (prefs, cmds, req, impl, etc.)

**✅ ALWAYS**:

- Create clean, thoroughly compressed output
- Preserve original file structure (plain markdown + YAML)
- Apply compression rules systematically to entire body
- Validate output before considering task complete
- **REDUCE CONTENT LENGTH** - Every line should be shorter than original
- **APPLY ALL ABBREVIATION RULES** - "preferences" → "prefs", "commands" → "cmds", "req" → "req"
- **USE LOGICAL OPERATORS** - "or" → "|", "and" → "&" in appropriate contexts
- **ELIMINATE REDUNDANCY** - Remove repeated words, combine similar phrases
- **RE-READ AFTER CHANGES** - Always re-read file content after making edits to avoid clobbering

## AxiTxt Compression Rules

### 1. Emoji Substitution

Replace common words/concepts w/ single emoji characters:

- ✅ for "correct", "right", "good", "yes", "approved"
- ❌ for "wrong", "incorrect", "bad", "no", "rejected"
- 🔄 for "process", "workflow", "cycle", "iteration"
- 📝 for "documentation", "notes", "writing", "content"
- 🔧 for "tools", "configuration", "settings", "utilities"
- 💡 for "idea", "concept", "insight", "suggestion"
- ⚠️ for "warning", "caution", "important", "attention"
- 🎯 for "goal", "target", "objective", "aim"
- 📊 for "data", "analytics", "metrics", "statistics"
- 🚀 for "deployment", "launch", "implementation", "release"

**🚫 CRITICAL EMOJI RULE**: Emoji must NEVER be decorative. Emoji are only valid as direct replacements for common words/concepts listed above. Any decorative emoji that don't serve as word substitutions must be removed during compression.

### 2. Common Abbreviations

Use std abbreviations for frequent terms:

- "w/" for "with"
- "w/o" for "without"
- "b/c" for "because"
- "vs" for "versus"
- "etc" for "et cetera"
- "i.e." for "that is"
- "e.g." for "for example"
- "API" instead of "Application Programming Interface"
- "UI/UX" instead of "User Interface/User Experience"
- "DB" for "database"
- "config" for "configuration"
- "repo" for "repository"
- "impl" for "implementation"
- "spec" for "specification"
- "req" for "requirement"
- "auth" for "authentication"
- "prefs" for "preferences"
- "cmds" for "commands"
- "lang" for "language"
- "std" for "standard"
- "mgmt" for "management"
- "org" for "organization"
- "doc/docs" for "documentation"
- "info" for "information"
- "dev" for "development"
- "env" for "environment"
- "pkg" for "package"
- "lib" for "library"
- "dir" for "directory"
- "proj" for "project"

### 3. Sentence Structure Minimization

- Remove unnecessary articles (a, an, the) when meaning remains clear
- Use bullet points instead of full sentences where possible
- Combine related short sentences w/ semicolons | commas
- Eliminate redundant phrases like "In order to", "It should be noted that"

### 4. Technical Term Optimization

- Use widely accepted acronyms: "ML" (Machine Learning), "AI" (Artificial Intelligence)
- Replace "functionality" w/ "feature"
- Replace "utilize" w/ "use"
- Replace "parameter" w/ "param"
- Replace "variable" w/ "var"
- Replace "function" w/ "func" in technical contexts

### 5. Punctuation & Formatting Reduction

- Use line breaks instead of transition phrases
- Minimize use of quotation marks when context is clear
- Use dashes (-) instead of longer phrases like "which means that"
- Replace ":" w/ direct statements when possible

### 6. Contextual Word Replacement

- "necessary" → "needed"
- "additional" → "extra"
- "previous" → "prior"
- "following" → "next"
- "currently" → "now"
- "determine" → "find"
- "demonstrate" → "show"
- "indicate" → "show"
- "perform" → "do"
- "commence" → "start"

### 7. List & Structure Optimization

- Use symbols (•, -, >) instead of "First, Second, Third"
- Combine similar list items
- Use nested structures sparingly
- Prioritize parallel structure in lists

### 8. Redundancy Elimination

- Remove filler words: "really", "very", "quite", "somewhat"
- Eliminate repeated concepts within same paragraph
- Combine sentences that convey similar info
- Remove obvious statements that don't add value

### 9. Technical Docs Shortcuts

- "src" for "source"
- "dest" for "destination"
- "env" for "environment"
- "dev" for "development"
- "prod" for "production"
- "temp" for "temporary"
- "async" for "asynchronous"
- "sync" for "synchronous"

### 10. Conditional & Logical Operators

- Use ">" for "greater than", "better than"
- Use "<" for "less than", "worse than"
- Use "=" for "equals", "is the same as"
- Use "&" for "and" in technical contexts
- Use "|" for "or" in lists/options
- Use "!" for "not" (e.g., "if !exist" for "if it doesn't exist")
- Use "+" for "plus", "additional", "also"
- Parenthetical compression: "(when X | Y)" for "(when X or Y)"

### 11. Time & Sequence Compression

- "pre-" instead of "before the"
- "post-" instead of "after the"
- "mid-" instead of "during the middle of"
- Use timestamps | short date formats
- "Q1/Q2/Q3/Q4" for quarters

### 12. Code & Cmd Optimization

- Use backticks for inline code references
- Minimize code comments to essential info only
- Use std cmd shortcuts (ls, cd, cp, mv)
- Reference file paths w/ relative notation when clear

### 13. Measurement & Quantity Shortcuts

- Use "%" instead of "percent"
- Use "K" for thousands, "M" for millions
- Use std unit abbreviations (sec, min, hr, KB, MB, GB)
- Use numeric representations where appropriate (1st, 2nd, 3rd)

### 14. Communication Efficiency

- Start w/ most important info
- Use active voice > passive voice
- Eliminate hedging lang ("might", "could", "possibly")
- Use imperative mood for instructions

### 15. Quality Assurance Protocol

- Verify all abbreviations are commonly understood
- Ensure emoji usage enhances rather than obscures meaning
- Maintain logical flow despite compression
- Preserve all critical technical details
- Test compressed text for clarity w/ 🎯 audience

## Compression Guidelines

- **🎯**: 35-50% token reduction
- **Priority**: Semantic preservation > maximum compression
- **Context**: Maintain technical accuracy in specialized domains
- **Readability**: Ensure compressed text remains scannable & clear

## Common Failure Modes to Avoid

**CRITICAL**: These are actual failure patterns that must be prevented:

### Failure Mode 1: Content Expansion Instead of Compression

**❌ WRONG**:

```
Original: "Adding User Rules (when user says "add user rule" or "add user instruction")"
"Compressed": "Adding User Rules (Personal prefs, local only, not committed)" + extra bullet points
```

**✅ ✅**:

```
Original: "Adding User Rules (when user says "add user rule" or "add user instruction")"
Compressed: "Adding User Rules (user says "add user rule" | "add user instruction")"
```

### Failure Mode 2: Insufficient Abbreviation Application

**❌ WRONG**:

```
Original: "Lang prefs, formatting, naming conventions"
"Compressed": "Lang prefs, formatting, naming conventions" (unchanged)
```

**✅ ✅**:

```
Original: "Lang prefs, formatting, naming conventions"
Compressed: "Lang prefs, formatting, naming conventions"
```

### Failure Mode 3: Missing Logical Operator Usage

**❌ WRONG**:

```
Original: "when user says "add proj rule" or "add [proj] rule""
"Compressed": "when user says "add proj rule" or "add [proj] rule"" (unchanged)
```

**✅ ✅**:

```
Original: "when user says "add proj rule" or "add [proj] rule""
Compressed: "when user says "add proj rule" | "add [proj] rule""
```

### Failure Mode 4: Not Recognizing Compression Opportunities

Every instance of common words should be compressed:

- "req" → "req"
- "prefs" → "prefs"  
- "cmds" → "cmds"
- "impl" → "impl"
- "config" → "config"
- "docs" → "docs"
- "if it doesn't exist" → "if !exist"

## Usage Instructions

1. **Read & Parse**: Read complete source file, separate YAML from body
2. **Systematic Compression**: Apply AxiTxt rules to entire markdown body
3. **Iterative Improvement**: Re-read & apply extra compression passes until 35-50% reduction achieved
4. **Clean Assembly**: Combine preserved YAML + compressed body
5. **Validation**: Verify output structure & semantic preservation
6. **Error Check**: Ensure no duplications, code blocks, | format corruption
7. **Metrics**: Report compression statistics (before/after token counts)

## Self-Validation Checklist

Before considering compression complete:

- [ ] **File Structure**: Plain markdown w/ YAML front matter (no code blocks)
- [ ] **Content Integrity**: Single, clean version (no duplications)
- [ ] **YAML Preservation**: Front matter exactly unchanged
- [ ] **Compression Quality**: 35-50% reduction achieved
- [ ] **Semantic Accuracy**: All meaning preserved
- [ ] **Technical Precision**: No loss of specialized terminology
- [ ] **Format Validation**: Output matches expected markdown structure
- [ ] **NO CONTENT EXPANSION**: Every section is shorter than original
- [ ] **AGGRESSIVE ABBREVIATION**: All common terms abbreviated (prefs, cmds, req, impl, etc.)
- [ ] **LOGICAL OPERATORS USED**: "|" for "or", "&" for "and", "!" for "not"
- [ ] **REDUNDANCY ELIMINATED**: No repeated phrases | unnecessary words

Transform provided text using these AxiTxt compression techniques.