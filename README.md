# Axiomantic

A comprehensive set of coding standards, methodologies, and behavioral guidelines for AI coding assistants (GitHub Copilot, Cursor, etc.).

## What is Axiomantic?

Axiomantic provides expert-curated development practices that transform AI coding assistants from simple code generators into professional development partners. Instead of getting "yes-man" responses, you get critical, thoughtful dialogue that challenges assumptions and produces higher-quality code.

## Key Features

- **Professional Dialogue Standards**: Encourages AI to be critical, ask probing questions, and push back constructively
- **Comprehensive Development Standards**: Covers code quality, architecture, testing, documentation, and project management
- **Four-Pillar Validation System**: Every implementation is validated against coding standards, documentation, project patterns, and testing
- **Self-Validation Methodology**: Built-in quality assurance for all code changes
- **User Customization System**: Override and extend base instructions for project-specific needs

## Installation

To integrate Axiomantic with your AI coding assistant, paste this prompt into your chat:

**Note**: If you want to integrate existing copilot-instructions: use a premium AI model with excellent reasoning skills for the installation process to ensure best result.

```
Please integrate Axiomantic instructions into my project using this exact process:

STEP 1: Download Axiomantic instructions VERBATIM:
- Execute: `mkdir -p .github && curl -o .github/copilot-instructions.axiomantic.md https://raw.githubusercontent.com/elijahr/axiomantic/devel/.github/copilot-instructions.md`
- This downloads the complete Axiomantic instructions file to a temporary staging location

STEP 2: Handle existing copilot instructions file:
- Check if .github/copilot-instructions.md already exists in the project
- If NO existing file: Execute `mv .github/copilot-instructions.axiomantic.md .github/copilot-instructions.md` and skip to STEP 4
- If YES existing file exists: Ask me "Do you want to REPLACE your existing instructions completely, or INTEGRATE them with Axiomantic?" Then:
  - Create backup: `cp .github/copilot-instructions.md .github/copilot-instructions.md.bak`
  - Install Axiomantic: `mv .github/copilot-instructions.axiomantic.md .github/copilot-instructions.md`

STEP 3: If I chose INTEGRATE (preserve my existing instructions):
- Read the contents of my backed-up instructions from .github/copilot-instructions.md.bak
- Search the backup file for the text "AXIOMANTIC VERSION:" to determine integration method:
  - If NO "AXIOMANTIC VERSION:" text found anywhere in the backup: This means I had custom instructions but no previous Axiomantic installation. Take ALL content from the backup file and treat it as my custom user overrides.
  - If "AXIOMANTIC VERSION:" text IS found in the backup: This means I had a previous Axiomantic installation. Extract ONLY the content from the "AXIOMANTIC USER OVERRIDES" section of the backup file (everything after the "# AXIOMANTIC USER OVERRIDES" heading).
- Take the extracted instructions and add them to the "AXIOMANTIC USER OVERRIDES" section at the bottom of the new .github/copilot-instructions.md file
- Organize my extracted instructions into the appropriate override categories that exist in the new file's AXIOMANTIC USER OVERRIDES section (Code Style Overrides, Architecture Overrides, Testing Overrides, Documentation Overrides, Custom Rules)
- CRITICAL RULE: Never modify, edit, or change any part of the Axiomantic base instructions above the "AXIOMANTIC USER OVERRIDES" section - only add content to the USER OVERRIDES section

STEP 4: Confirm completion and instruct me to start a new chat window for the changes to take effect, as AI assistants need to reload their context to recognize the new instruction file.

Follow all Axiomantic principles and standards in our subsequent interactions.
```

## Purpose

Axiomantic elevates AI-assisted development by:

- Promoting critical thinking over blind compliance
- Establishing consistent quality standards across projects
- Providing structured validation processes
- Encouraging professional development dialogue
- Creating maintainable, well-documented codebases

## Version

Current Version: 0.1.0

---

_Axiomantic provides a solid foundation of professional coding standards for AI assistants, with an easy way to add your project-specific requirements on top._
