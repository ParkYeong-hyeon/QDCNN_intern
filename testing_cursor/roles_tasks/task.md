# Summary: Absence of Barren Plateaus in Finite Local-Depth Circuits with Long-Range Entanglement

**Paper**: Zhang et al. (2024), Physical Review Letters  
**Citation**: @Zhang2024

## Core Contribution

This paper introduces **Finite Local-Depth Circuits (FLDCs)** as a circuit architecture that avoids barren plateaus while maintaining the ability to generate long-range entanglement states. The key innovation is distinguishing between **local depth** (number of non-commuting gates acting on each qubit) and **global depth** (total circuit layers).

## Main Results

### Theoretical Contributions

1. **Barren plateau absence proof**: FLDCs with local Hamiltonians do not suffer from barren plateaus. The gradient variance has a lower bound that does not vanish with system size: $\mathrm{Var}_{U}[C] \ge 4^{-\beta r \chi^{2}}$.

2. **Local depth definition**: Local depth is defined as the number of non-commuting gates acting on each individual qubit. FLDCs have finite local depth that does not scale with system size, even though they may be globally deep.

3. **Expressibility**: Despite finite local depth, FLDCs can generate topologically ordered long-range entanglement states, which shallow circuits cannot produce.

4. **PEPS interpretation**: FLDCs satisfy the entanglement area law and can be interpreted as a subset of Projected Entangled Pair States (PEPS), where local depth corresponds to bond dimension.

5. **Classical simulability**: Higher-dimensional FLDCs are generally difficult to simulate classically using tensor network methods, suggesting potential quantum advantage.

### Numerical Validation

- **Gradient variance behavior**: In 1D FLDC ansatz, gradient variance remains nearly constant with system size, decreasing only exponentially with path length (Δk), confirming barren plateau absence.

- **VQE performance**: On 2D toric code models, FLDCs achieve energies nearly matching exact diagonalization (ED), significantly outperforming General Linear-Depth Circuits (GLDC) and showing superior expressibility compared to Finite-Depth Circuits (FDC). Topological entanglement entropy results support these findings.

## Methodology

The paper combines theoretical analysis with numerical simulation:

- **Theoretical framework**: Establishes a general lower bound for gradient variance in circuits composed of local 2-designs, showing exponential decay with path "length" and "head width". For FLDCs with local Hamiltonians, these path properties are bounded, preventing gradient vanishing.

- **Numerical experiments**: Uses generalized 2D toric code models under external fields. Compares FLDC, FDC, and GLDC ansatzes, evaluating converged energy (E/N), topological entanglement entropy ($S_{topo}$), and gradient variance scaling. Implemented using TensorCircuit.

## Key Insight

The paper challenges the assumption that "depth = untrainable" by showing that **local depth, not global depth, determines both trainability and expressibility** in parameterized quantum circuits. This provides a theoretical foundation for designing trainable deep quantum circuits, connecting QCNN, MERA-like structures, tensor networks, and variational algorithms under a unified framework.
