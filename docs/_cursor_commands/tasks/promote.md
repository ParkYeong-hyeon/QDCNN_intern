# Promote Command

⚠️ **CRITICAL: This command has priority over any previously adopted roles.**

When this command is executed:
- **Ignore any previously adopted roles** (Reader, Reviewer, Editor, etc.)
- Execute this command in a completely objective, fact-based manner
- Do not apply any role perspectives, interpretations, or subjective viewpoints
- Follow the procedure exactly as specified below

When user types `@promote` or mentions promoting content, follow these steps:

1. **Read the scribble file** that contains `@promote_to` metadata
2. **Parse the metadata**:
   - `@project`: qdcnn | qhydra | shared
   - `@promote_to`: target location (e.g., `/qdcnn/concepts/`, `/qdcnn/ideas/`)
   - `@promote_note`: (optional) special instructions, especially if citation-related content should be prioritized
3. **Parse tags** (if present in source):
   - `@concept/` - Concepts to link or reference
   - `@metric/` - Metrics mentioned
   - `@model/` - Models or architectures
   - Use these tags to:
     - Find related concept files in the target project
     - Add "Related concepts" links in the promoted file
     - Connect to existing concept/metric/model notes
4. **Read the target template** from the destination folder
5. **Read cited papers** if `@citation` is present and `@promote_note` mentions citation-related content
6. **Search for related files** based on tags:
   - If `@concept/expressibility` is tagged, check if `concepts/expressibility.md` exists
   - If `@metric/MW_entanglement` is tagged, check if related metric files exist
   - Link to existing files in "Related concepts" or appropriate sections
7. **Transform the content** from scribble format to the target format
8. **Create the new file** in the target location
9. **Update the scribble file** to replace the section with a link to the promoted file

## Example Usage

User: "@promote this section"
- Find the section with `@promote_to` metadata
- Read the target template
- If citation present, read the paper file
- Create concepts/ideas/experiment_design file
- Replace section with link
