# Format Command

⚠️ **CRITICAL: This command has priority over any previously adopted roles.**

When this command is executed:
- **Ignore any previously adopted roles** (Reader, Reviewer, Editor, etc.)
- Execute this command in a completely objective, fact-based manner
- **DO NOT modify content** - only fix formatting and structure
- Do not apply any role perspectives, interpretations, or subjective viewpoints
- Focus solely on formatting improvements without changing meaning or content

When user types `@format` or asks to format a file, improve the markdown formatting while preserving all content exactly as written.

## Principles

- **Content-preserving**: Do not change, add, or remove any content, ideas, or meaning
- **Readability-focused**: Prioritize improved readability over strict format compliance
- **Format-only**: Only fix markdown syntax, structure, and formatting
- **Objective**: Apply standard markdown conventions consistently, but prioritize readability
- **Non-interpretive**: Do not interpret or reorganize content based on meaning
- **Role-independent**: Execute without influence from any previously adopted roles
- **Pragmatic**: Focus on making the file more readable rather than achieving perfect markdown compliance

## What to Fix (Formatting Only)

Focus on **readability improvements** rather than strict format compliance:

1. **Markdown syntax** (only if it affects readability):
   - Fix incorrect header levels (#, ##, ###)
   - Fix list formatting (bullets, numbering, indentation)
   - Fix code block syntax (```)
   - Fix inline code syntax (`)
   - Fix link syntax `[text](url)`
   - Fix emphasis syntax (*, **, _)

2. **Structure consistency** (for readability):
   - Standardize list markers (- vs * vs +)
   - Ensure consistent indentation
   - Fix spacing around headers
   - Normalize blank lines (remove excessive, keep necessary for readability)
   - Add horizontal rules (---) to separate major sections when it improves readability

3. **Formatting consistency** (for readability):
   - Standardize arrow symbols (→, ->, =>) when it improves clarity
   - Fix quote block formatting (>)
   - Ensure consistent spacing in lists
   - Fix table formatting (if present)
   - Add line breaks where they improve readability (e.g., between paragraphs in long blocks)

4. **Code blocks**:
   - Ensure proper code block delimiters
   - Fix code block language tags
   - Ensure proper indentation in code blocks

## What NOT to Do

- ❌ Do NOT change any words, sentences, or content
- ❌ Do NOT reorganize sections based on meaning
- ❌ Do NOT add or remove information
- ❌ Do NOT interpret or rephrase content
- ❌ Do NOT apply project context or connections
- ❌ Do NOT add links or references that weren't there
- ❌ Do NOT change the order of content (unless fixing obvious formatting errors)

## Usage

- Format markdown files: Fix syntax and structure while preserving content
- Clean up formatting: Standardize markdown conventions
- Fix syntax errors: Correct markdown syntax issues
- Improve readability: Fix formatting without changing meaning

## Output

The formatted file should:
- Be more readable than the original (primary goal)
- Have correct markdown syntax (where it affects readability)
- Use consistent formatting conventions (for readability)
- Maintain all original content exactly as written
- Preserve all original structure and organization
- Use formatting improvements that enhance readability (line breaks, spacing, section separators)

## Error Handling & Retry Strategy

**Maximum 2 attempts:**
1. **First attempt**: Read the entire file once, process formatting changes in memory, write the entire file at once
2. **If first attempt fails**: Read the file again, identify specific formatting issues, make targeted fixes, write once more
3. **If second attempt fails**: Report specific formatting issues to the user and stop retrying

**Approach:**
- Read the entire file content into memory before making any changes
- Process all formatting improvements in memory
- Write the entire file at once (avoid partial edits that can cause matching failures)
- If exact string matching fails, use the full file rewrite approach
- Prioritize readability improvements that can be made safely
- Do not retry more than 2 times - report issues to user instead

## Example

**Input:**
```markdown
##Section Title
- item1
* item2
  -subitem
```

**Output:**
```markdown
## Section Title

- item1
- item2
  - subitem
```

Content unchanged, only formatting fixed for better readability.

## Execution Strategy

1. **Read entire file** into memory (one time only)
2. **Process formatting** in memory:
   - Identify readability improvements
   - Apply formatting fixes
   - Do not make multiple partial edits
3. **Write entire file** at once
4. **If errors occur**: Report specific issues to user, do not retry more than 2 times
5. **Focus on readability**: It's better to make the file more readable than to achieve perfect markdown compliance
