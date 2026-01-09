# Tagging System

This document describes the tagging system used in literature notes and other files to enable better organization and linking.

## Tag Types

### `@concept/`
Concepts discussed in papers or notes.

Examples:
- `@concept/expressibility`
- `@concept/effective_dimension`
- `@concept/local_depth`
- `@concept/amplitude_encoding`

### `@metric/`
Metrics used or analyzed.

Examples:
- `@metric/QFI` (Quantum Fisher Information)
- `@metric/MW_entanglement` (Meyer-Wallach entanglement)
- `@metric/CE` (Concentratable Entanglement)

### `@model/`
Models or architectures.

Examples:
- `@model/QCNN`
- `@model/QDCNN`
- `@model/QuantumHydra`


## Usage

### In Literature Notes

Add tags at the top of the file:

```markdown
**Tags**:
@concept/local_depth
@concept/expressibility
@concept/barren_plateau
@concept/trainability
@metric/MW_entanglement
```

### In Scribble Notes

Add tags when relevant concepts/metrics/models/phenomena are mentioned:

```markdown
## [HH:MM] Topic

@concept/expressibility
@concept/barren_plateau

### Thoughts
...
```

## Benefits

1. **Promote to Concepts**: When promoting from scribble or literature to concepts, tags help:
   - Find existing concept files to link
   - Identify which concepts to create
   - Connect related content

2. **Find Related Notes**: Use `@find_by_tag` command to:
   - Find all papers discussing a concept
   - Find all notes mentioning a metric
   - Collect related insights and concepts

3. **Cross-Reference**: Tags enable:
   - Automatic linking between related files
   - Discovery of connections across projects
   - Better organization of knowledge

## Commands Using Tags

- **`@promote`**: Uses tags to find related concept files and add links
- **`@find_by_tag`**: Searches for all files containing a specific tag

## Example Workflow

1. Read a paper and add tags: `@concept/expressibility`, `@concept/barren_plateau`
2. Later, promote scribble content about expressibility
3. `@promote` command finds existing `concepts/expressibility.md` (if exists) and links to it
4. Use `@find_by_tag @concept/expressibility` to see all related notes
