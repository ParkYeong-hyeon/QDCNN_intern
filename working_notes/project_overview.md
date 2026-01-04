# Project Overview  
**Quantum Dilated CNN vs QCNN: A Comparative Study**

> **Note**  
> Most of the content in this section is adapted from prior laboratory work and is included primarily to provide contextual background for AI-assisted development (e.g., Cursor AI).  
> This section does not represent original contributions.  
> *Prior laboratory implementation*: https://github.com/JHPark9090/QuantumDilatedCNN.git

---
## Study Rationale

### Background
Quantum Convolutional Neural Networks (QCNNs) are a representative architecture in quantum machine learning, particularly for image-like data.  
The original QCNN architecture (Cong et al., 2019) relies on **nearest-neighbor entanglement**, where quantum gates act only on adjacent qubits.

### Hypothesis
This study explores whether **dilated (non-adjacent) entanglement patterns** can provide qualitative advantages by:
- enabling long-range information flow,
- reducing effective circuit depth,
- and altering the global structure of entanglement.

### Research Questions
- How do dilated and nearest-neighbor entanglement patterns differ structurally?
- How are these differences reflected in entanglement, correlation, and capacity-related metrics?
- Do these structural differences translate into meaningful model behavior?

### Architectures Compared

| Architecture | Entanglement Pattern |
|-------------|----------------------|
| QCNN | Nearest-neighbor (i, i+1) |
| Quantum Dilated CNN | Dilated (i, i+2) |

---

## Quantum Circuit Metrics (Conceptual)

The architectures are compared using metrics that characterize **entanglement structure, correlation range, expressibility, and effective capacity**, including:
- Meyer–Wallach global entanglement,
- concentratable (multipartite) entanglement,
- distance-dependent mutual information,
- expressibility (KL / JS divergence from Haar),
- and effective dimension.

These metrics are used to analyze *how* information is distributed and propagated within the circuit, rather than focusing solely on classification accuracy.

---

## Qualitative Observations

Preliminary analyses indicate that:
- entanglement and correlation patterns closely reflect the intended circuit connectivity,
- nearest-neighbor QCNNs emphasize local correlations,
- while dilated architectures induce structured long-range correlations.

The focus of the study is on understanding these **architectural and geometric differences**, rather than claiming immediate performance superiority.
