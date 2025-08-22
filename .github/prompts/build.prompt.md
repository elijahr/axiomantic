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

Before processing, systematically catalog source files:

```bash
# List all files to be processed
find chatmodes instructions prompts -name "*.md" -type f
```

Record file inventory for validation:

- Total files found: [count]
- Files to compress: [count] (excluding prompts/*.md)
- Files to copy as-is: [count] (prompts/*.md)
- File size baseline established

### Step 3: Process Distribution Files

**File Processing Rules**:

1. **Compression Target Files**: All markdown files in chatmodes/ and instructions/ directories
2. **Copy-As-Is Files**: prompts/*.md (these are meta-tools that should remain uncompressed)

**CRITICAL**: Follow systematic processing for each file:

#### For Compression Target Files (chatmodes/*, instructions/*, other prompts/*):

1. **Read Complete Source File** - Load entire file content
2. **Parse File Structure**:
   - Extract YAML front matter (preserve exactly)
   - Extract markdown body (apply compression here only)
3. **Apply Compression**: Use AxiTxt protocol systematically to body content
4. **Assemble Output**: Combine preserved YAML + compressed markdown body
5. **Create Clean File**: Write as plain markdown (no code block wrapping)
6. **Immediate Validation**: Verify structure before continuing

#### For Copy-As-Is Files (prompts/*.md):

1. **Read Complete Source File** - Load entire file content
2. **Copy Directly**: Copy file exactly as-is to dist/prompts/ with no modifications
3. **Immediate Validation**: Verify file copied correctly

**⚠️ Quality Gates - STOP if any fail**:

- File structure is clean markdown (not wrapped in code blocks)
- No content duplication within file
- YAML front matter exactly preserved (for compressed files)
- Compression applied consistently throughout body (for compressed files)
- Copy-as-is files are exact replicas of source
- Output validates as proper markdown

For markdown files in the chatmodes/ and instructions/ directories, apply the compression process - creating a new compressed file of the same name in dist/chatmodes/ or dist/instructions/. For prompts/*.md, copy them exactly as-is to dist/prompts/. Leave all original non-dist files untouched. The AxiTxt compression protocol is detailed in [`axitxt.md`](../../prompts/axitxt.md).

### Step 4: Validation and Reporting

After processing, provide build report:

```
=== AXIOMANTIC BUILD COMPLETE ===

Files Processed:
• chatmodes/: [count] files (compressed)
• instructions/: [count] files (compressed)
• prompts/: [count] files ([x] compressed, [y] copied as-is)

Processing Results:
• Files compressed: [count]
• Files copied as-is: 2 (prompts/*.md)
• Average compression: [percentage]% (compressed files only)
• Total files processed: [count]
• Build status: ✅ SUCCESS

Distribution ready at: ./dist/
```

## Quality Assurance Requirements

For compressed files, ensure:

- ✅ **YAML front matter unchanged** - Exact preservation of metadata
- ✅ **Plain markdown format** - No code block wrapping (````instructions`, etc.)
- ✅ **Single clean version** - No content duplication or mixed versions
- ✅ **Semantic meaning preserved** - All instructions remain clear and actionable
- ✅ **Technical accuracy maintained** - No loss of specialized terminology meaning
- ✅ **Context sufficient** - Compressed content provides adequate context for AI assistants
- ✅ **No ambiguous abbreviations** - All shortcuts remain unambiguous in context
- ✅ **File structure preserved** - Same paths, filenames, and directory organization
- ✅ **Systematic compression** - Rules applied consistently throughout entire document

For copy-as-is files (prompts/*.md), ensure:

- ✅ **Exact replica** - Byte-for-byte identical to source file
- ✅ **No modifications** - No compression, editing, or alterations applied
- ✅ **Correct location** - Placed in dist/prompts/ directory
- ✅ **File integrity** - Original functionality fully preserved

## Error Prevention Protocol

**Before starting processing, commit to**:

1. **No rushing** - Process each file completely before moving to next
2. **Systematic compression** - Apply all compression rules thoroughly for compression targets, re-reading file after each major change
3. **Exact copying** - For copy-as-is files, ensure perfect replication
4. **Immediate validation** - Check each output file before continuing
5. **Format discipline** - Never wrap in code blocks, maintain markdown structure
6. **Self-criticism** - Question and validate each step

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

If processing fails for any file:

1. **Report the specific file** and error details
2. **Identify root cause**: duplication, format corruption, rushing, copy failure, etc.
3. **Clean up corrupted output** - Remove broken files immediately
4. **Re-approach systematically** - Follow appropriate protocol (compression vs copy-as-is)
5. **Continue processing other files** only after fix validated
6. **Provide summary** of successful vs failed processing
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
- **Compressed files** using AxiTxt techniques (chatmodes/, instructions/, other prompts files)
- **Unmodified files** copied as-is (prompts/*.md)
- **Clean markdown format** - Plain .md files, not code blocks
- **YAML front matter preserved** in all .md files
- **Thoroughly compressed content** - No duplicated or mixed content (for compressed files)
- **Validated structure** - Each file checked before considering complete
- **Token-efficient distribution** ready for deployment

## Self-Validation Requirements

After completing build, verify each output file:

### For Compressed Files:
1. **Structure Check**: Plain markdown with preserved YAML front matter
2. **Content Check**: Single, clean compressed version (no duplicates)
3. **Format Check**: No code block wrapping or corruption
4. **Semantic Check**: All meaning preserved and enhanced
5. **Size Check**: 35-50% token reduction achieved

### For Copy-As-Is Files (prompts/*.md):
1. **Integrity Check**: File is byte-for-byte identical to source
2. **Location Check**: File is in correct dist/prompts/ location
3. **Functionality Check**: File maintains original purpose and structure

**Only report SUCCESS after all files pass validation.**

Execute the complete build process and provide detailed results.
