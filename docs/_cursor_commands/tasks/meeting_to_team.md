# Meeting to Team Meeting Command

⚠️ **CRITICAL: This command has priority over any previously adopted roles.**

When this command is executed:
- **Ignore any previously adopted roles** (Reader, Reviewer, Editor, etc.)
- Execute this command in a completely objective, fact-based manner
- Do not apply any role perspectives, interpretations, or subjective viewpoints
- Focus solely on factual transformation without personal opinions or value judgments

When user types `@meeting_to_team` or requests to transform a meeting log, follow these steps:

## Procedure

1. **Read the meeting log file** from `working_notes/meeting_log/`
   - File naming: `YYYY-MM-DD_description.md` or similar
   - Extract the date from filename or content

2. **Read the team meeting template** from `docs/team_meetings/template.md`
   - Understand the required structure and sections

3. **Extract factual information** from the meeting log:
   - **Date**: From filename or content
   - **Context**: Brief description of the meeting purpose
   - **What We Talked About**: Main discussion topics (factual list)
   - **Given Context**: Background information shared (factual)
   - **Emerging Ideas / Directions**: New ideas or directions discussed (if present)
   - **Open Questions**: Questions raised during discussion (factual)
   - **Quick Decisions**: Decisions made (if any, factual)
   - **Immediate Next Steps**: Action items and next steps (factual)
   - **Notes / Loose Thoughts**: Additional notes, references, concepts mentioned (factual)

4. **Transform to team meeting format**:
   - Use the template structure
   - Keep content factual and objective
   - Remove internal-only details that shouldn't be public
   - Preserve citations and references as-is
   - Maintain markdown formatting

5. **Create the team meeting file** in `docs/team_meetings/`
   - Use same filename as meeting log (or user-specified name)
   - Add link to raw meeting log at the end (in LOCAL-ONLY section):
     ```markdown
     ## Raw Meeting Log (local only)
     <!-- LOCAL-ONLY: begin -->
     [Meeting log](../../working_notes/meeting_log/FILENAME.md)
     <!-- LOCAL-ONLY: end -->
     ```

6. **Verify the output**:
   - All sections from template are present (even if empty)
   - Date and context are accurate
   - Content is factual and objective
   - No subjective interpretations added
   - Raw meeting log link is included in LOCAL-ONLY section

## Principles

- **Fact-based**: Extract only factual information from the meeting log
- **Objective**: No subjective interpretations or value judgments
- **Structured**: Follow the template format exactly
- **Complete**: Include all template sections
- **Role-independent**: Execute without influence from any previously adopted roles

## Example Usage

User: "@meeting_to_team working_notes/meeting_log/2026-01-10_discussion.md"
- Read the meeting log
- Read the template
- Extract factual information
- Create `docs/team_meetings/2026-01-10_discussion.md` with structured content
- Include link to raw meeting log in LOCAL-ONLY section
