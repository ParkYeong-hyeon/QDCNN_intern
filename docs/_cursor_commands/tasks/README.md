# Task-Oriented Commands

This directory contains **task-oriented commands** that perform specific workflows.

⚠️ **CRITICAL: Tasks have absolute priority over roles.**

When a task is executed:
- **Ignore any previously adopted roles** (Reader, Reviewer, Editor, etc.)
- Execute in a completely objective, fact-based manner
- Do not apply any role perspectives, interpretations, or subjective viewpoints
- Focus solely on factual execution without personal opinions or value judgments

## Characteristics

- **Procedure-focused**: Execute a step-by-step process
- **Result-oriented**: Produce a specific output (file creation, analysis, etc.)
- **Completion-based**: Task completes when the procedure is finished
- **Objective and fact-based**: No subjective interpretations or role perspectives
- **Role-independent**: Override any previously adopted roles

## Available Commands

- `promote.md` - Promote scribble content to structured notes (concepts/ideas/experiment_design)
- `analyze.md` - Provide structured analysis of content
- `summarize.md` - Create concise summaries
- `compare.md` - Compare items (models, results, papers, etc.)
- `meeting_to_team.md` - Transform meeting log to structured team meeting summary
- `find_by_tag.md` - Find files by tag (`@concept/`, `@metric/`, `@model/`)
- `format.md` - Format markdown files (content-preserving, formatting only)

## Usage

Use file paths to trigger commands:
- `@docs/_cursor_commands/tasks/promote.md`
- `@docs/_cursor_commands/tasks/analyze.md`
