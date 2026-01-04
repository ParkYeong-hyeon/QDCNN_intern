# Absence of Barren Plateaus in Finite Local-Depth Circuits with Long-Range Entanglement

**Source**: Zhang et al., *PRL* (2024)  
**Bib**: @Zhang2024  
**Link**: https://link.aps.org/doi/10.1103/PhysRevLett.132.150603


## Summary
Conventional variational quantum algorithms suffer from the barren plateau problem in **deep circuits**, making the preparation of long-range entangled states difficult. This work introduces the concept of **local depth** and defines **Finite Local-Depth Circuits (FLDCs)**, in which the number of non-commuting gates acting on each qubit is bounded. Despite being globally deep, <u>**FLDCs exhibit gradient variances that do not vanish with system size and are capable of generating long-range entangled states, as demonstrated through both theoretical lower bounds and numerical simulations.**</u>

## Key Contributions
> In essence, this paper introduces FLDCs as a theoretically robust and practically effective class of quantum circuits that can overcome the barren plateau problem while retaining the expressibility needed for complex quantum states, thus paving the way for more efficient and powerful VQAs.
### Theoretical Proof of Barren Plateau Absence
- **General Lower Bound on Gradient Variance**: The paper rigorously proves a general <u>lower bound</u> on the variance of circuit gradients for arbitrary quantum circuits composed of <u>local 2-designs.</u> This framework unifies the understanding of gradient scaling behaviors across various architectures 
- **Absence of Barren Plateaus in FLDCs**: A central contribution is the proof that FLDCs, when used with local Hamiltonians, are free from barren plateaus. This is achieved by demonstrating that the 'length' and 'head width' of certain paths in these circuits can be upper bounded, preventing the exponential decay of gradients with system size. 
### Characterization of Finite Local-Depth Circuits (FLDCs):
- **Definition of Local Depth**: The paper identifies and emphasizes the critical role of 'local depth' as a key circuit feature determining the trainability of Parameterized Quantum Circuits (PQCs). Local depth refers to the number of non-commuting gates acting on individual qubits, distinct from conventional global depth 
- **Expressibility for Long-Range Entanglement (LRE)**: FLDCs are shown to possess strong expressibility, capable of generating LRE states, including topologically ordered states, despite having finite local depths. This contrasts with shallow circuits that typically only produce short-range entangled (SRE) states 
- **Entanglement Area Law and PEPS Subclass**: FLDCs composed of spatially local gates preserve the entanglement area law, making them a powerful and accessible subclass of Projected Entangled Pair States (PEPS). The local depth in FLDCs effectively acts as the bond dimension in this context
Non-Classical Simulability and Quantum Advantage
Hardness of Classical Simulation: The paper highlights that FLDCs, especially in two and higher dimensions, cannot generally be simulated efficiently by existing tensor network methods to estimate local observables. This is due to their large global depth and complex loop structures, which can lead to polynomially large tree width. This suggests that FLDCs hold promise for achieving quantum advantage in ground state preparation tasks.

### Numerical Validation
- **Demonstrated Effectiveness**: Extensive numerical simulations, particularly using the generalized 2D toric code model, validate the analytical results. These simulations demonstrate the effectiveness of variational training using FLDCs and show their superior performance compared to both finite depth circuits (FDCs) and general linear depth circuits (GLDCs) in preparing LRE ground states.
- **Gradient Variance Behavior**: Numerical experiments confirm that the gradient variance in a 1D FLDC ansatz remains almost constant with system size, while decaying exponentially with path length (Δk), a behavior consistent with the absence of barren plateaus 

## Methodology

> The paper employs a combination of theoretical analysis and numerical simulations to characterize Finite Local-Depth Circuits (FLDCs) and demonstrate their advantages in variational quantum algorithms (VQAs).

### Theoretical Framework and Definitions
- **Problem Identification**: The research addresses the challenge of barren plateaus in deep quantum circuits, which hinder the optimization of VQAs for preparing long-range entangled (LRE) states. It notes that while shallow circuits avoid barren plateaus, they cannot prepare LRE states, necessitating circuits of at least linear depth.
- **Defining Local Depth**: The authors introduce and define 'local depth' as a crucial circuit characteristic, referring to the number of non-commuting gates acting on individual qubits, distinct from the conventional 'global depth'. FLDCs are then defined as circuits where this maximum local depth does not scale with the system size, allowing them to be globally deep and generate LRE states.
- **Gradient Variance Lower Bound**: A general lower bound on the variance of circuit gradients is derived for arbitrary quantum circuits composed of local 2-designs. This bound shows that the contribution from each Hamiltonian subterm decays exponentially with the 'length' and 'head width' of paths on the circuit, which are geometric concepts related to time-ordered sequences of connected blocks.
- **Proof of Barren Plateau Absence**: For FLDCs and local Hamiltonians, the 'length' and 'head width' of these paths are shown to be upper-bounded. This theoretical finding leads to the conclusion that FLDCs are free from barren plateaus, as the gradient variance does not vanish exponentially with system size. Specifically, the gradient variance is lower bounded by $Var_{U}[C] \ge 4^{-\beta r \chi^{2}}$.
- **Expressibility and Entanglement Properties**: The paper theoretically establishes that FLDCs can generate LRE states and preserve the entanglement area law, positioning them as a subclass of Projected Entangled Pair States (PEPS).
- **Non-Classical Simulability Analysis**: The methodology includes an analysis of the classical simulability of FLDCs. It is argued that FLDCs, particularly in two and higher dimensions, are generally hard to simulate classically for local observable expectations due to their large global depth and complex loop structures, implying potential for quantum advantage.

### Numerical Validation
- **Model System**: The generalized 2D toric code model under an external field is used for numerical experiments to validate the theoretical findings. This model is chosen because its ground state near the zero-field limit is topologically ordered and experiences a quantum phase transition to a short-range entangled state.
- **Circuit Ansatzes**: The numerical simulations compare the variational performance of FLDCs against finite depth circuits (FDCs) and general linear depth circuits (GLDCs). The FLDC ansatz is designed to be similar to the theoretically defined structure, with each two-qubit block being a general Cartan decomposition.
- **Performance Metrics**: The primary metrics evaluated include the converged energy (E/N) and the topological entanglement entropy ($S_{topo}$) to assess the ability of different circuit classes to prepare LRE ground states. The gradient variance behavior with system size and path length is also numerically investigated to confirm the absence of barren plateaus.
- **Implementation**: Numerical experiments are implemented using TensorCircuit.

By combining these rigorous theoretical derivations with supportive numerical evidence, the paper provides a comprehensive understanding of FLDCs' properties and their potential utility in VQAs.

## Results

> The study presents significant theoretical and numerical results demonstrating the absence of barren plateaus in Finite Local-Depth Circuits (FLDCs) and their effectiveness in variational quantum algorithms (VQAs).

### Theoretical Results
- ### Absence of Barren Plateaus
    The paper provides a general lower bound on the variance of circuit gradients for arbitrary quantum circuits composed of local 2-designs. Based on this framework, it is proven that barren plateaus are absent in training finite local-depth circuits (FLDC) for the ground states of local Hamiltonians. This is crucial because barren plateaus, characterized by exponentially vanishing circuit gradients with system size, can hinder optimization in VQAs . The lower bound for the gradient variance is given by $Var_{U}[C] \ge 4^{-\beta r \chi^{2}}$, where $\chi$ is the maximum local depth, $\beta$ is the maximum block size, and $r$ is the maximum interaction range of the Hamiltonian.

- ### Expressibility for Long-Range Entanglement (LRE)
    FLDCs are shown to possess strong expressibility, capable of generating long-range entangled ground states, such as topologically ordered states. This is possible even though their local depths are finite, distinguishing them from shallow circuits that typically only produce short-range entangled states . The local depth is identified as a critical circuit feature determining trainability.

- ### Entanglement Area Law and PEPS Subclass
    A significant feature of FLDCs composed of spatially local gates is that the generated quantum states satisfy the entanglement area law. This characteristic makes them a subclass of projected entangled pair states (PEPS) of the corresponding spatial dimension, with the local depth acting as the bond dimension.

- ### Non-Classical Simulability
    The study concludes that FLDCs, particularly in two and higher dimensions, cannot generally be simulated efficiently by existing tensor network methods to estimate local observables. This is due to their large global depth and complex loop structures that can lead to polynomially large tree width, making classical simulation hard. This suggests that FLDCs are potentially relevant for achieving quantum advantage in ground state preparation.

### Numerical Validation
- ### Verification of Barren Plateau Absence
    Numerical evaluations confirm the absence of barren plateaus in FLDCs. For a 1D FLDC ansatz, the gradient variance remains almost constant with the system size, while it decays exponentially with the path length (Δk). This behavior is consistent with findings in isometric tensor networks, and the exponential decay with Δk does not indicate poor trainability as long as some gradients remain non-zero.

- ### Superior Performance in VQE
    Using the generalized 2D toric code model, FLDCs demonstrate prominently better performance in VQE compared to both finite depth circuits (FDCs) and general linear depth circuits (GLDCs) . Numerical results show that the energies obtained by FLDCs almost coincide with exact values from exact diagonalization (ED). In contrast, GLDCs show poor trainability, and FDCs, while barren-plateau-free, lack the expressibility to faithfully represent LRE states, performing well only in the large field limit but deviating near the zero-field limit. The topological entanglement entropy ($S_{topo}$) results also support these findings.

In summary, the paper successfully establishes FLDCs as a promising class of quantum circuits that overcome the barren plateau problem while retaining the necessary expressibility for complex quantum states, supported by both rigorous theoretical proofs and comprehensive numerical simulations.

## Notes and Thoughts
