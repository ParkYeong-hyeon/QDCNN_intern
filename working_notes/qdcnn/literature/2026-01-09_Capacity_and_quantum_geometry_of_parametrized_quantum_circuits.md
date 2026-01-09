# Capacity and quantum geometry of parametrized quantum circuits

**Source**: Haug et al., *arXiv* (2021)  
**Bib**: @Haug2021  
**Link**: https://arxiv.org/abs/2102.01659v2  
**PDF**: https://arxiv.org/pdf/2102.01659v2

**Tags**:
```
@concept/expressibility
@concept/capacity
@concept/quantum_geometry
@concept/effective_quantum_dimension
@concept/barren_plateau
@concept/trainability
@concept/parametric_quantum_circuits
@metric/quantum_natural_gradient
```

## Summary

This paper evaluates the **capacity and trainability** of parametrized quantum circuits using the geometric structure of the parameter space via the **effective quantum dimension**. Key findings:
- Reveals expressive power of circuits in general as well as of particular initialization strategies
- Assesses expressive power of various popular circuit types and finds striking differences depending on type of entangling gates used
- Identifies transition in quantum geometry of parameter space, leading to decay of quantum natural gradient for deep circuits
- Shows that for shallow circuits, quantum natural gradient can be orders of magnitude larger than regular gradient
- Finds region where circuit is expressive but does not suffer from barren plateaus, hinting at good initialization strategy
- Provides algorithm to prune redundant parameters without affecting effective dimension

## Key Contributions

- **Effective quantum dimension**: Uses geometric structure of parameter space to reveal expressive power of circuits
- **Circuit type comparison**: Assesses expressive power of various popular circuit types, finding differences based on entangling gate types
- **Scaling laws**: Particular circuits characterized by scaling laws in their expressiveness
- **Quantum geometry transition**: Identifies transition in quantum geometry that leads to decay of quantum natural gradient for deep circuits
- **Barren plateau mitigation**: Finds region where circuit is expressive but doesn't suffer from barren plateaus
- **Parameter pruning**: Algorithm to prune redundant parameters without affecting effective dimension

## Methodology

- Uses effective quantum dimension to evaluate capacity and trainability
- Analyzes geometric structure of parameter space
- Compares different circuit types and entangling gate strategies
- Studies quantum natural gradient vs regular gradient
- Develops parameter pruning algorithm

## Results

- **Expressiveness differences**: Striking differences in expressive power depending on type of entangling gates used
- **Scaling laws**: Particular circuits show scaling laws in their expressiveness
- **Gradient behavior**: For shallow circuits, quantum natural gradient can be orders of magnitude larger than regular gradient; both can suffer from vanishing gradients
- **Initialization strategy**: Tuning fixed parameters to randomized ones finds region where circuit is expressive but doesn't suffer from barren plateaus
- **Parameter efficiency**: Algorithm successfully prunes redundant parameters without affecting effective dimension

## Notes and Thoughts

- **Highly relevant to QDCNN**: This paper's focus on expressivity, capacity, and trainability directly relates to QDCNN's goals of designing efficient quantum architectures.
- **Barren plateau connection**: Addresses barren plateau problem, which is a key concern in quantum machine learning and relates to QDCNN's motivation.
- **Entangling gates**: The finding that entangling gate type affects expressiveness is relevant for QDCNN's use of long-range entanglement.
- **Initialization strategies**: The paper's findings on initialization could inform QDCNN circuit design.
- **Quantum geometry**: The geometric perspective provides theoretical foundation for understanding circuit capacity.

## Citations

See [[../../literature/bib/references.bib]] for BibTeX entries.
