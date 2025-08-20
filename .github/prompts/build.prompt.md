---
description: Build compressed distribution of Axiomantic instructions using AxiTxt compression
---

# Axiomantic Distribution Builder

You are an expert build system that creates compressed distributions of Axiomantic instruction files. Apply AxiTxt compression to create a token-efficient distribution while preserving all semantic meaning.

## Build Process

Execute these steps in exact sequence:

### Step 1: Clean and Prepare Distribution Directory

```bash
# Remove existing dist directory if it exists
rm -rf dist/

# Create new dist directory structure
mkdir -p dist/chatmodes dist/instructions dist/prompts
```

### Step 2: File Discovery and Analysis

Before compression, systematically catalog source files:

```bash
# List all files to be processed
find chatmodes instructions prompts -name "*.md" -type f
```

Record file inventory for validation:

- Total files found: [count]
- Expected output files: [count]
- File size baseline established

### Step 3: Apply AxiTxt Compression to Distribution Files

**CRITICAL**: Follow systematic compression process for each file:

1. **Read Complete Source File** - Load entire file content
2. **Parse File Structure**:
   - Extract YAML front matter (preserve exactly)
   - Extract markdown body (apply compression here only)
3. **Apply Compression**: Use AxiTxt protocol systematically to body content
4. **Assemble Output**: Combine preserved YAML + compressed markdown body
5. **Create Clean File**: Write as plain markdown (no code block wrapping)
6. **Immediate Validation**: Verify structure before continuing

**⚠️ Quality Gates - STOP if any fail**:

- File structure is clean markdown (not wrapped in code blocks)
- No content duplication within file
- YAML front matter exactly preserved
- Compression applied consistently throughout body
- Output validates as proper markdown

For each markdown file in the chatmodes/, instructions/, and prompts/ directories, apply this process - creating a new compressed file of the same name in dist/chatmodes/, dist/instructions/, or dist/prompts/ - leaving the original file untouched. The AxiTxt compression protocol is detailed in [`axitxt.md`](../../prompts/axitxt.md).

### Step 4: Validation and Reporting

After compression, provide build report:

```
=== AXIOMANTIC BUILD COMPLETE ===

Files Processed:
• chatmodes/: [count] files
• instructions/: [count] files
• prompts/: [count] files

Compression Results:
• Average compression: [percentage]%
• Total files processed: [count]
• Build status: ✅ SUCCESS

Distribution ready at: ./dist/
```

## Quality Assurance Requirements

For every compressed file, ensure:

- ✅ **YAML front matter unchanged** - Exact preservation of metadata
- ✅ **Plain markdown format** - No code block wrapping (````instructions`, etc.)
- ✅ **Single clean version** - No content duplication or mixed versions
- ✅ **Semantic meaning preserved** - All instructions remain clear and actionable
- ✅ **Technical accuracy maintained** - No loss of specialized terminology meaning
- ✅ **Context sufficient** - Compressed content provides adequate context for AI assistants
- ✅ **No ambiguous abbreviations** - All shortcuts remain unambiguous in context
- ✅ **File structure preserved** - Same paths, filenames, and directory organization
- ✅ **Systematic compression** - Rules applied consistently throughout entire document

## Error Prevention Protocol

**Before starting compression, commit to**:

1. **No rushing** - Process each file completely before moving to next
2. **Systematic compression** - Apply all compression rules thoroughly, re-reading file after each major change
3. **Immediate validation** - Check each output file before continuing
4. **Format discipline** - Never wrap in code blocks, maintain markdown structure
5. **Self-criticism** - Question and validate each step

**If ANY file shows signs of**:

- Content duplication
- Code block wrapping
- Mixed compressed/uncompressed sections
- YAML corruption
- Format inconsistencies

**STOP immediately and**:

- Delete corrupted output
- Re-read source file completely
- Apply compression systematically, re-reading file after major changes
- Validate before continuing

## Error Handling

If compression fails for any file:

1. **Report the specific file** and error details
2. **Identify root cause**: duplication, format corruption, rushing, etc.
3. **Clean up corrupted output** - Remove broken files immediately
4. **Re-approach systematically** - Follow single-pass protocol
5. **Continue processing other files** only after fix validated
6. **Provide summary** of successful vs failed compressions
7. **Suggest manual review** for any persistent issues

**Common Failure Patterns to Watch For**:

- Multiple versions of same content in output
- Code block wrapping (````instructions`)
- YAML front matter corruption
- Mixed compression states
- File format inconsistencies

## Build Output

The `dist/` directory should contain:

- **Same structure** as source directories (chatmodes/, instructions/, prompts/)
- **All files compressed** using AxiTxt techniques
- **Clean markdown format** - Plain .md files, not code blocks
- **YAML front matter preserved** in all .md files
- **Thoroughly compressed content** - No duplicated or mixed content
- **Validated structure** - Each file checked before considering complete
- **Token-efficient distribution** ready for deployment

## Self-Validation Requirements

After completing build, verify each output file:

1. **Structure Check**: Plain markdown with preserved YAML front matter
2. **Content Check**: Single, clean compressed version (no duplicates)
3. **Format Check**: No code block wrapping or corruption
4. **Semantic Check**: All meaning preserved and enhanced
5. **Size Check**: 35-50% token reduction achieved

**Only report SUCCESS after all files pass validation.**

Execute the complete build process and provide detailed results.
