# Shared Bibliography

This directory contains the shared bibliography for all projects in the repository.

## Location

All BibTeX entries are maintained in `bib/references.bib`, which serves as the single source of truth for bibliographic metadata across all projects (qdcnn, qhydra, shared).

## Usage

Reference the bibliography in your notes using:
- `[references.bib](../literature/bib/references.bib)` (from project folders like `qdcnn/concepts/`)
- `[references.bib](../../literature/bib/references.bib)` (from project subfolders like `qdcnn/literature/`)

## Citation Format

Use citation keys in the format `@AuthorYear` (e.g., `@Zhang2024`) in your markdown files. The corresponding BibTeX entries should be added to `bib/references.bib`.

## Benefits of Shared Bibliography

- **No duplication**: Same paper used across multiple projects only needs one entry
- **Consistency**: Citation keys are unified across all projects
- **Easy maintenance**: Single file to update when bibliographic information changes
