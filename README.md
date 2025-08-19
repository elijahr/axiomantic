# Axiomantic

A comprehensive set of coding standards, methodologies, and behavioral guidelines for AI coding assistants (GitHub Copilot, Cursor, etc.).

## What is Axiomantic?

Axiomantic provides expert-curated development practices that transform AI coding assistants from simple code generators into professional development partners. Instead of getting "yes-man" responses, you get critical, thoughtful dialogue that challenges assumptions and produces higher-quality code.

## Key Features

- **Professional Dialogue Standards**: Encourages AI to be critical, ask probing questions, and push back constructively
- **Comprehensive Development Standards**: Covers code quality, architecture, testing, documentation, and project management
- **Four-Pillar Validation System**: Every implementation is validated against coding standards, documentation, project patterns, and testing
- **Self-Validation Methodology**: Built-in quality assurance for all code changes
- **Layered Override System**: Three-tier customization with User > Project > Base priority hierarchy

## Installation

To integrate Axiomantic with your AI coding assistant, paste this prompt into your chat:

**Note**: If you want to integrate existing copilot-instructions: use a premium AI model with excellent reasoning skills for the installation process to ensure best result.

````
Please integrate Axiomantic instructions into my project using this exact process:

STEP 1: Download and extract Axiomantic instruction files:
- Execute: `curl -L https://github.com/elijahr/axiomantic/archive/devel.zip -o axiomantic.zip`
- Execute: `unzip -q axiomantic.zip`
- Execute: `mkdir -p .github/instructions .github/chatmodes .github/prompts`
- Copy compressed distribution files: `cp -r axiomantic-devel/dist/instructions/* .github/instructions/`
- Copy compressed distribution files: `cp -r axiomantic-devel/dist/chatmodes/* .github/chatmodes/`
- Copy compressed distribution files: `cp -r axiomantic-devel/dist/prompts/* .github/prompts/`
- Clean up: `rm -rf axiomantic.zip axiomantic-devel/`

STEP 2: Analyze project structure and update applyTo patterns:
- Scan this project for source directories and file patterns:
  - Source patterns: Look for src/, lib/, app/, components/, and common source file extensions (.js, .ts, .py, .java, .go, .rs, .cpp, .c, .php, etc.)
  - Test patterns: Look for test/, tests/, __tests__/, spec/, and test file patterns (*.test.*, *.spec.*, *_test.*, test_*.*, spec_*.*)
  - Documentation patterns: Look for docs/, documentation/, *.md, *.rst, *.txt files
  - Configuration patterns: Look for *.json, *.yaml, *.yml, *.toml, *.ini, .env*, *rc files, Dockerfile, Makefile, package.json, pyproject.toml, etc.

STEP 3: Update applyTo patterns in each instruction file:
Replace the `applyTo: 'none'` line in each file with project-appropriate patterns:

- `.github/instructions/base.instructions.md`: Always use `applyTo: '**/*'`
- `.github/instructions/source.instructions.md`: Use found source AND test patterns (tests need coding standards)
- `.github/instructions/test.instructions.md`: Use found test patterns only
- `.github/instructions/docs.instructions.md`: Use found documentation patterns
- `.github/instructions/config.instructions.md`: Use found configuration patterns

Example patterns based on findings:
```yaml
# If you found src/, lib/, test/, and docs/ directories:
# source.instructions.md
applyTo: 'src/**/*,lib/**/*,test/**/*,tests/**/*,**/*.test.*,**/*.spec.*'

# test.instructions.md
applyTo: 'test/**/*,tests/**/*,**/*.test.*,**/*.spec.*,*_test.*'
````

STEP 4: Handle existing copilot instructions (if present):

- Check if `.github/copilot-instructions.md` exists in the project
- If NO existing file: Continue to STEP 6
- If YES existing file exists: Ask me "Do you want your existing copilot instructions integrated as **project-level** (committed to repo), **user-level** (local only), or **deleted** (not integrated)?" Then:
  - Create backup: `cp .github/copilot-instructions.md .github/copilot-instructions.md.bak`

STEP 5: Integrate existing instructions based on user choice:

- **If project-level**: Create `.github/instructions/project.instructions.md` and organize existing content into appropriate categories:

  - **Code Style Overrides**: Language preferences, formatting, naming conventions
  - **Architecture Overrides**: Design patterns, structure, organization principles
  - **Testing Overrides**: Test requirements, frameworks, coverage expectations
  - **Documentation Overrides**: Documentation standards, formats, requirements
  - **Custom Rules**: Project-specific requirements not covered above

- **If user-level**: Create `.github/instructions/user.instructions.md` and organize content using the same categories as above

- **If deleted**: Skip integration, existing instructions will be removed

STEP 6: Configure gitignore and cleanup:

- Add `.github/instructions/user.instructions.md` to .gitignore if it exists (personal preferences shouldn't be committed)
- Ensure `.github/instructions/project.instructions.md` is NOT in gitignore (should be committed for team)
- Remove old monolithic file: `rm -f .github/copilot-instructions.md`

STEP 7: Confirm completion and instruct me to start a new chat window for changes to take effect, as AI assistants need to reload context to recognize the new instruction files. Output a message along the lines of the below, with any irrelevant sections removed:

INSTALLATION COMPLETE!

**Important Notes:**

- If you had an existing `.github/copilot-instructions.md` file, it has been backed up as `.github/copilot-instructions.md.bak` in case you need to reference it later
- Your existing instructions have been integrated based on your preference (project-level, user-level, or deleted)

**HIGHLY RECOMMENDED:** Switch to "Axiomantic Agent" chat mode immediately for the best experience:

1. Open the VS Code Chat view
2. Click the chat mode dropdown (currently showing "Ask", "Edit", or "Agent")
3. Select "Axiomantic Agent" from the list
4. Experience enhanced AI assistance with professional dialogue and four-pillar validation

The new multi-file structure provides:

- Selective application based on file types (tests get both source AND test-specific rules)
- Better organization and maintainability
- Layered instruction system (base + source + test for test files)
- **Optional** project.instructions.md and user.instructions.md files (created only when rules are added)
- **Axiomantic Agent chat mode** for professional development dialogue

Follow all Axiomantic principles and standards in our subsequent interactions.

```

## Purpose

Axiomantic elevates AI-assisted development by:

- Promoting critical thinking over blind compliance
- Establishing consistent quality standards across projects
- Providing structured validation processes
- Encouraging professional development dialogue
- Creating maintainable, well-documented codebases
- Supporting team collaboration with layered customization (User > Project > Base)

## Using Axiomantic

After installation, Axiomantic provides multiple levels of AI assistance:

### Instruction Files (Automatic)
- **Selective application**: Different instruction files automatically apply to different file types
- **Layered system**: Test files get both source.instructions.md AND test.instructions.md rules
- **Override hierarchy**: Personal > Project > Base instruction priority
- **Optional customization files**: project.instructions.md and user.instructions.md are created only when you add rules

### Axiomantic Agent Chat Mode (Recommended)
Switch to "Axiomantic" in the VS Code chat mode dropdown for:
- **Professional dialogue** that challenges assumptions and asks probing questions
- **Four-pillar validation** automatically applied to all implementations
- **Critical thinking** over blind compliance
- **Enhanced instruction integration** with context-aware rule application

### Customization Options
- **Add project rules**: Say "add project rule" to create/update team standards (committed to repo)
- **Add user rules**: Say "add user rule" to create/update personal preferences (gitignored, local only)
- **AxiTxt compression**: Use `/axitxt` prompt for token-efficient documentation

---

_Axiomantic provides a solid foundation of professional coding standards for AI assistants, with an easy way to add your project-specific requirements on top._
```
