# Cursor Commands

This directory contains all command definitions for the Cursor AI assistant. Commands are organized into two categories: **tasks** (workflow-oriented) and **roles** (perspective-oriented).

## Structure

- `tasks/` - Task-oriented commands that perform specific workflows
- `roles/` - Role-based commands that adopt specific perspectives/roles

## Task-Oriented Commands (`tasks/`)

Commands for specific workflows. These execute a procedure and complete:

- `promote.md` - Promote scribble content to structured notes (supports tag-based linking)
- `analyze.md` - Provide structured analysis
- `summarize.md` - Create concise summaries
- `compare.md` - Compare items (models, results, papers, etc.)
- `meeting_to_team.md` - Transform meeting log to structured team meeting summary
- `find_by_tag.md` - Find files by tag (`@concept/`, `@metric/`, `@model/`)
- `format.md` - Format markdown files (content-preserving, formatting only)

## Role-Based Commands (`roles/`)

Commands that adopt specific roles/personas for different aspects of research work. These adopt a perspective that may persist in the conversation:

- `LeadAuthor.md` - Lead Author/PI role for writing high-impact research prose
- `Reviewer.md` - Constructive but skeptical reviewer role for stress-testing claims
- `Coder.md` - Senior Research Engineer role for code review and debugging
- `Visualizer.md` - Expert in Scientific Visualization for figures and tables
- `Editor.md` - Senior Copy Editor role for polishing text and formatting
- `LitExpert.md` - Meta-analysis & Literature Expert for contextualizing findings
- `Reader.md` - General audience reader role for readability and clarity feedback
- `CursorDesigner.md` - Cursor AI System Designer & Workflow Optimizer (system-level design, structure review, workflow optimization)

## Usage

Trigger commands by typing `@` followed by the file path in the chat.

**Task-oriented commands** (objective, fact-based):
- `@docs/_cursor_commands/tasks/promote.md` - Execute promote command
- `@docs/_cursor_commands/tasks/analyze.md` - Execute analyze command
- `@docs/_cursor_commands/tasks/summarize.md` - Create concise summaries
- `@docs/_cursor_commands/tasks/compare.md` - Compare items factually
- `@docs/_cursor_commands/tasks/format.md` - Format markdown files (content-preserving)

**Role-based commands** (perspective-oriented, may include subjective interpretation):
- `@docs/_cursor_commands/roles/Reviewer.md, check this results table` - Adopt Reviewer role and review table
- `@docs/_cursor_commands/roles/LeadAuthor.md, draft the introduction` - Adopt LeadAuthor role and draft introduction
- `@docs/_cursor_commands/roles/Coder.md, explain this quantum circuit` - Adopt Coder role and explain code
- `@docs/_cursor_commands/roles/Reader.md, read this paper` - Adopt Reader role and provide feedback

## Important: Separation of Tasks and Roles

**⚠️ Do not mix tasks and roles in the same command.**

- **Tasks** are designed to be objective and fact-based
- **Roles** provide perspectives and may include subjective interpretation
- Mixing them can make subjective interpretations appear as objective facts

**Recommended workflow:**
1. Use tasks to create objective results
2. Then use roles to review/feedback on those results

See `USAGE_GUIDE.md` for detailed examples and rationale.

## Combining Roles and Tasks

### ✅ Recommended: Sequential Workflow

Use roles and tasks **sequentially** in separate messages for clarity:

```
Message 1: @docs/_cursor_commands/tasks/promote.md
   → Create objective result

Message 2: @docs/_cursor_commands/roles/Editor.md, polish the promoted file
   → Review with Editor perspective

Message 3: @docs/_cursor_commands/roles/Reviewer.md, review the polished file
   → Review with Reviewer perspective
```

**Why this works:**
- Clear separation: objective tasks vs. subjective perspectives
- Each step has a defined purpose
- Easy to track progress
- Objective results remain fact-based

### ❌ Not Recommended: Mixing Roles and Tasks

**Do not combine a role with a task in the same message:**

```
❌ @docs/_cursor_commands/roles/Reader.md 관점을 유지하면서 @docs/_cursor_commands/tasks/analyze.md 해줘
```

**Why this is problematic:**
- Role's subjective interpretation may be presented as objective fact
- Tasks are designed to be objective and fact-based
- Mixing them can make subjective views appear as objective results
- The nature of the output becomes ambiguous

### ❌ Not Recommended: Multiple Commands Simultaneously

Avoid using multiple commands in one message:

```
❌ @docs/_cursor_commands/roles/Reviewer.md @docs/_cursor_commands/tasks/analyze.md
```

**Why this is problematic:**
- Unclear execution order
- Conflicting directives
- Hard to predict behavior

## Best Practices

1. **Use tasks standalone** for objective, fact-based results
2. **Use roles standalone** for perspectives, feedback, and brainstorming
3. **Chain sequentially**: tasks first (objective) → roles second (review/feedback)
4. **Keep them separate**: maintain clear distinction between objective tasks and subjective perspectives
