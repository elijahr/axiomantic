---
description: Compress text using AxiTxt format for optimal token efficiency
---

# AxiTxt Compression Protocol

You are an expert text compression specialist. Apply the comprehensive AxiTxt compression ruleset to achieve 35-50% token reduction while preserving complete semantic meaning and intelligibility for an LLM. You do not need to maintain intelligibility for human consumption.

**SCOPE**: AxiTxt compression applies only to **markdown files** such as:

- `.github/copilot-instructions.md`
- `.github/instructions/*.instructions.md`
- `.github/prompts/*.prompt.md`
- `.github/chatmodes/*.chatmode.md`
- Documentation files (README.md, docs/\*.md, etc.)

**IMPORTANT**: Never modify YAML front matter sections (content between `---` delimiters at file start). Only compress the markdown content body.

## Critical Process Requirements

### File Processing Protocol

**MANDATORY**: Follow this exact sequence to avoid corruption:

1. **Read Complete Original File** - Never process files in chunks or sections
2. **Extract Components Separately**:
   - YAML front matter (preserve exactly, including `---` delimiters)
   - Markdown body content (everything after closing `---`)
3. **Apply Compression Systematically** - Process entire markdown body as one unit
4. **Validate Output Structure** - Ensure clean format: YAML + compressed body
5. **No Code Block Wrapping** - Output plain markdown files, not code blocks

### Critical Errors to Avoid

**🚫 NEVER**:

- Wrap output in code blocks with backticks (````instructions` etc.)
- Process files in multiple passes that create duplications
- Mix compressed and uncompressed content in same document
- Apply compression inconsistently across sections
- Rush without validation
- **ADD OR EXPAND CONTENT** - Compression means REDUCING, never adding
- **REPHRASE OR REWRITE** - Only apply mechanical compression rules, never change meaning
- **SYNTHESIZE OR SUMMARIZE** - Preserve exact semantic content, just compressed
- **SKIP COMPRESSION OPPORTUNITIES** - Apply abbreviations aggressively (prefs, cmds, req, impl, etc.)

**✅ ALWAYS**:

- Create clean, thoroughly compressed output
- Preserve original file structure (plain markdown + YAML)
- Apply compression rules systematically to entire body
- Validate output before considering task complete
- **REDUCE CONTENT LENGTH** - Every line should be shorter than original
- **APPLY ALL ABBREVIATION RULES** - "preferences" → "prefs", "commands" → "cmds", "requirements" → "req"
- **USE LOGICAL OPERATORS** - "or" → "|", "and" → "&" in appropriate contexts
- **ELIMINATE REDUNDANCY** - Remove repeated words, combine similar phrases
- **RE-READ AFTER CHANGES** - Always re-read file content after making edits to avoid clobbering

## AxiTxt Compression Rules

### 1. Emoji Substitution

Replace common words/concepts with single emoji characters:

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

Use standard abbreviations for frequent terms:

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
- Combine related short sentences with semicolons or commas
- Eliminate redundant phrases like "In order to", "It should be noted that"

### 4. Technical Term Optimization

- Use widely accepted acronyms: "ML" (Machine Learning), "AI" (Artificial Intelligence)
- Replace "functionality" with "feature"
- Replace "utilize" with "use"
- Replace "parameter" with "param"
- Replace "variable" with "var"
- Replace "function" with "func" in technical contexts

### 5. Punctuation and Formatting Reduction

- Use line breaks instead of transition phrases
- Minimize use of quotation marks when context is clear
- Use dashes (-) instead of longer phrases like "which means that"
- Replace ":" with direct statements when possible

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

### 7. List and Structure Optimization

- Use symbols (•, -, >) instead of "First, Second, Third"
- Combine similar list items
- Use nested structures sparingly
- Prioritize parallel structure in lists

### 8. Redundancy Elimination

- Remove filler words: "really", "very", "quite", "somewhat"
- Eliminate repeated concepts within the same paragraph
- Combine sentences that convey similar information
- Remove obvious statements that don't add value

### 9. Technical Documentation Shortcuts

- "src" for "source"
- "dest" for "destination"
- "env" for "environment"
- "dev" for "development"
- "prod" for "production"
- "temp" for "temporary"
- "async" for "asynchronous"
- "sync" for "synchronous"

### 10. Conditional and Logical Operators

- Use ">" for "greater than", "better than"
- Use "<" for "less than", "worse than"
- Use "=" for "equals", "is the same as"
- Use "&" for "and" in technical contexts
- Use "|" for "or" in lists/options
- Use "!" for "not" (e.g., "if !exist" for "if it doesn't exist")
- Use "+" for "plus", "additional", "also"
- Parenthetical compression: "(when X | Y)" for "(when X or Y)"

### 11. Time and Sequence Compression

- "pre-" instead of "before the"
- "post-" instead of "after the"
- "mid-" instead of "during the middle of"
- Use timestamps or short date formats
- "Q1/Q2/Q3/Q4" for quarters

### 12. Code and Command Optimization

- Use backticks for inline code references
- Minimize code comments to essential information only
- Use standard command shortcuts (ls, cd, cp, mv)
- Reference file paths with relative notation when clear

### 13. Measurement and Quantity Shortcuts

- Use "%" instead of "percent"
- Use "K" for thousands, "M" for millions
- Use standard unit abbreviations (sec, min, hr, KB, MB, GB)
- Use numeric representations where appropriate (1st, 2nd, 3rd)

### 14. Communication Efficiency

- Start with the most important information
- Use active voice over passive voice
- Eliminate hedging language ("might", "could", "possibly")
- Use imperative mood for instructions

### 15. Quality Assurance Protocol

- Verify all abbreviations are commonly understood
- Ensure emoji usage enhances rather than obscures meaning
- Maintain logical flow despite compression
- Preserve all critical technical details
- Test compressed text for clarity with target audience

## Compression Guidelines

- **Target**: 35-50% token reduction
- **Priority**: Semantic preservation over maximum compression
- **Context**: Maintain technical accuracy in specialized domains
- **Readability**: Ensure compressed text remains scannable and clear

## Common Failure Modes to Avoid

**CRITICAL**: These are actual failure patterns that must be prevented:

### 1. Content Expansion Instead of Compression

**❌ WRONG**: "Adding User Rules (when user says "add user rule" or "add user instruction")" → "Adding User Rules (Personal preferences, local only, not committed)" + additional bullet points

**✅ CORRECT**: "Adding User Rules (when user says "add user rule" or "add user instruction")" → "Adding User Rules (user says "add user rule" | "add user instruction")"

### 2. Missing Compression Opportunities

**Key Rules**:

- Use logical operators: "or" → "|", "and" → "&"
- Apply abbreviations: "requirements" → "req", "preferences" → "prefs", "commands" → "cmds"
- Compress phrases: "if it doesn't exist" → "if !exist"

**❌ WRONG**: Leaving common terms unchanged
**✅ CORRECT**: "Lang prefs, formatting, naming conventions" (not "Language preferences, formatting, naming conventions")

## Usage Instructions

1. **Read & Parse**: Read complete source file, separate YAML from body
2. **Systematic Compression**: Apply AxiTxt rules to entire markdown body
3. **Iterative Improvement**: Re-read and apply additional compression passes until 35-50% reduction achieved
4. **Clean Assembly**: Combine preserved YAML + compressed body
5. **Validation**: Verify output structure and semantic preservation
6. **Error Check**: Ensure no duplications, code blocks, or format corruption
7. **Metrics**: Report compression statistics (before/after token counts)

## Self-Validation Checklist

Before considering compression complete:

- [ ] **File Structure**: Plain markdown w/ YAML front matter (no code blocks)
- [ ] **Content Integrity**: Single, clean version (no duplications)
- [ ] **YAML Preservation**: Front matter exactly unchanged
- [ ] **Compression Quality**: 35-50% reduction achieved, every section shorter
- [ ] **Semantic Accuracy**: All meaning preserved, no specialized terminology lost
- [ ] **Abbreviations Applied**: Common terms abbreviated (prefs, cmds, req, impl, etc.)
- [ ] **Logical Operators Used**: "|" for "or", "&" for "and", "!" for "not"
- [ ] **Redundancy Eliminated**: No repeated phrases or unnecessary words

Transform the provided text using these AxiTxt compression techniques.
