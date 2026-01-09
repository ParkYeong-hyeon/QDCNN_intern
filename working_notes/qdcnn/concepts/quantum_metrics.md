# Quantum Metrics

**Related concepts**: [quantum_matrics](quantum_matrics.md), [effective_volume](effective_volume.md)  
**Key papers**: [@Zhang2024]  
**Links**: [Absence of Barren Plateaus in Finite Local-Depth Circuits with Long-Range Entanglement](../literature/2026-01-03_Absence_of_Barren_Plateaus_in_Finite_Local-Depth%20Circuits_with_Long-Range_Entanglement.md)

## Definition

Metrics used to characterize quantum circuit properties, including entanglement structure, correlation range, expressibility, and effective capacity.

## Core Idea

Quantum metrics provide quantitative measures to analyze how information is distributed and propagated within quantum circuits, rather than focusing solely on classification accuracy.

## Mathematical/Theoretical Background

Common quantum metrics include:
- Meyer–Wallach global entanglement
- Concentratable (multipartite) entanglement
- Distance-dependent mutual information
- Expressibility (KL / JS divergence from Haar)
- Effective dimension
- Effective volume

## In the Context of QDCNN

Quantum metrics are used to:
- Compare QCNN and QDCNN architectures
- Analyze entanglement and correlation patterns
- Understand how dilated vs nearest-neighbor entanglement patterns differ
- Characterize the global structure of entanglement

## Key Insights

- Metrics are primarily inspired by theoretical frameworks for analyzing quantum circuit properties
- Effective volume may be one of the metrics that aligns with the theoretical framework
- These metrics help understand architectural and geometric differences between quantum models

## Notes and Questions

- [ ] Verify how well effective volume aligns with other metrics in the context of the theoretical framework
- [ ] Explore the relationship between different metrics and their interpretations
- How do these metrics relate to model performance and trainability?

## Citations

Relevant works discussing this concept:
[@Zhang2024].

The corresponding BibTeX entries are maintained in
[references.bib](../literature/bib/references.bib), which serves as the single source of
truth for bibliographic metadata.
