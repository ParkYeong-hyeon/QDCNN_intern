# Find by Tag Command

⚠️ **CRITICAL: This command has priority over any previously adopted roles.**

When this command is executed:
- **Ignore any previously adopted roles** (Reader, Reviewer, Editor, etc.)
- Execute this command in a completely objective, fact-based manner
- Do not apply any role perspectives, interpretations, or subjective viewpoints
- Focus solely on finding and listing files based on tags

When user types `@find_by_tag` or asks to find files by tag, follow these steps:

## Procedure

1. **Parse the tag** from user request:
   - Format: `@concept/name`, `@metric/name`, `@model/name`
   - Extract tag type and name

2. **Search for files containing the tag**:
   - Search in `working_notes/{project}/literature/` for papers mentioning the tag
   - Search in `working_notes/{project}/concepts/` for concept files matching the tag
   - Search in `working_notes/{project}/insights/` for insights mentioning the tag
   - Search in `working_notes/scribble/` for scribble notes with the tag

3. **List all files** that contain the tag:
   - Show file paths
   - Show context where the tag appears (if relevant)
   - Group by file type (literature, concepts, insights, scribble)

4. **Provide summary**:
   - Total number of files found
   - Distribution across folders
   - Most relevant files (if multiple matches)

## Tag Types

- `@concept/` - Concepts (e.g., `@concept/expressibility`, `@concept/effective_dimension`, `@concept/barren_plateau`, `@concept/trainability`)
- `@metric/` - Metrics (e.g., `@metric/QFI`, `@metric/MW_entanglement`)
- `@model/` - Models or architectures (e.g., `@model/QCNN`, `@model/QDCNN`)

## Principles

- **Fact-based**: List files that actually contain the tag
- **Objective**: No interpretation, just file listing
- **Comprehensive**: Search all relevant directories
- **Structured**: Organize results clearly by file type and location
- **Role-independent**: Execute without influence from any previously adopted roles

## Example Usage

User: "@find_by_tag @concept/expressibility"
- Search for `@concept/expressibility` across all working_notes
- List all files containing this tag
- Group by literature, concepts, insights, scribble

User: "@find_by_tag @concept/barren_plateau in qdcnn"
- Search for `@concept/barren_plateau` in qdcnn project only
- List matching files
