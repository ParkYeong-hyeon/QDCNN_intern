# Local Depth (국소 깊이)

**Related concepts**: [[barren_plateau]], [[quantum_metrics]], [[qdcnn]]  
**Key papers**: [@Zhang2024]  
**Links**: [Absence of Barren Plateaus in Finite Local-Depth Circuits with Long-Range Entanglement](../literature/2026-01-03_Absence_of_Barren_Plateaus_in_Finite_Local-Depth%20Circuits_with_Long-Range_Entanglement.md)

## Definition

**국소 깊이(Local Depth)**는 각 큐비트에 작용하는 비가환 게이트의 수를 의미한다. 이는 전역 깊이(global depth)와 구별되는 개념으로, 매개변수화된 양자 회로(PQC)의 학습 가능성을 결정하는 핵심 요소이다.

**유한 국소 깊이 회로(Finite Local-Depth Circuits, FLDC)**는 각 큐비트에 작용하는 비가환 게이트의 개수가 유한하게 제한된 회로로, 시스템 크기에 따라 스케일하지 않는 국소 깊이를 가진다.

## Core Idea

기존의 "깊은 회로 = 학습 불가능"이라는 통념을 반박하는 핵심 개념이다. 전역적으로는 깊은 회로일 수 있지만, 각 큐비트가 겪는 비가환 연산의 수가 유한하게 제한되면 barren plateau 문제를 회피하면서도 높은 표현력을 유지할 수 있다.

## Mathematical/Theoretical Background

- **그래디언트 분산 하한**: FLDC와 국소 해밀토니안의 경우, 그래디언트 분산이 시스템 크기에 따라 소멸하지 않음을 증명
- **얽힘 면적 법칙**: FLDC는 PEPS(Projected Entangled Pair States)의 부분집합으로 해석 가능하며, 국소 깊이는 PEPS에서의 결합 차원(bond dimension)에 대응
- **장거리 얽힘 표현력**: 국소 깊이가 유한함에도 불구하고 위상적으로 정렬된 장거리 얽힘 상태를 생성할 수 있음

## In the Context of QDCNN

- **QCNN과 FLDC의 관계**: QCNN이 FLDC로 분류되려면 어떤 조건이 필요한가?
- **Pooling 이후의 local depth**: Pooling 연산 이후에도 local depth bound가 유지되는가?
- **학습 가능성**: FLDC 개념은 QDCNN의 학습 가능성과 표현력 사이의 균형을 이해하는 데 중요한 이론적 기반을 제공

## Key Insights

- **"깊이 = 학습 불가능" 통념의 반박**: 전역 깊이가 아니라 각 큐비트가 겪는 비가환 연산의 수가 학습성과 표현력을 동시에 좌우
- **Expressibility vs Trainability**: 이 논문은 expressibility보다 trainability 쪽을 강조
- **Barren plateau의 본질**: Barren plateau는 그래디언트가 평평해져서 방향을 못 잡는다는 개념이며, 기울기 기반 최적화에 의존하는 한계를 보여줌

## Notes and Questions

- QCNN이 FLDC로 분류되려면 어떤 조건이 필요한가?
- Pooling 이후에도 local depth bound가 유지되는가?
- QML에서 기울기 기반 최적화 말고 다른 방식이 더 선호될까?
- QCNN, MERA 유사 구조, 파라미터 공유를 갖는 계층적 회로 설계 시 local depth 개념의 활용 방안

## Citations

Relevant works discussing this concept:
[@Zhang2024; @Cerezo2022].

The corresponding BibTeX entries are maintained in
[[../literature/bib/references.bib]], which serves as the single source of
truth for bibliographic metadata.
