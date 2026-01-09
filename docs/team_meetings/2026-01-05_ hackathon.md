# Hackathon Onboarding Meeting

**Date**: 2026-01-05  
**Context**: 해커톤 관련 전달 사항
---

## What We Talked About

- Quantum Hydra 모델 소개 및 구조
- 해커톤을 위한 필수 참고 논문들
- 현재 진행 중인 ablation study 상황
- 모델 검증 전략 및 데이터셋 계획
- 1월 말까지 어느 정도 정리가 되어야 함

---

## Given Context

- **효율성 중심 접근(해석)**: 성능보다 효율성 측면에서 양자 이점을 어필하는 방향
- **도메인 특이성 활용**: 데이터 확보가 어려운 도메인에서 적은 데이터로도 학습 가능하다는 점을 강조
- **양자 하이브리드 구조**: feature extraction과 핵심 로직(mixing) 중 어느 부분에 양자를 적용할지에 대한 4가지 variation 모델 구성

---

## Quick Decisions (if any)

---


## Open Questions

- Ablation study에서 통계적 유의미함을 어떻게 확보할 것인가?
- 12개 모델 중 최적 모델을 선택하는 기준은 무엇인가?
- k-forrelation의 구체적인 활용 방안은?
- Limitation에 대한 문제 의식을 어떻게 논문에 반영할 것인가?

---

## Immediate Next Steps

- 필수 참고 논문 읽기: @Caro2022, @Abbas2021, @Cesaro2024, @Huang2025 및 git repo, notebookLM
- 다양한 데이터셋에 대한 모델 검증 계획 수립
- Ablation study 결과 분석 및 모델 선정

---

## Notes / Loose Thoughts

**참고 자료**:
- @Caro2022
- @Abbas2021
- @Cesaro2024
- @Vaswani2017
- @Huang2025
- @Gu2024

**핵심 개념**:
- Self-attention
- QSVT (Quantum Singular Value Transform)
- LCU (Linear Combination of Unitaries)
- Hydra: 양방향 학습을 전제로 한 모델

**모델 구조**:
- 총 4가지 구현 (classic/quantum 조합)
- 각각 3가지 variation으로 구성
- Feature extraction vs 핵심 로직(mixing)에서 양자 적용 위치가 핵심

**현재 상황**:
- 12개 모델을 3개 데이터셋으로 검증 중
- 통계적 유의미함은 아직 보이지 않음
- 다양한 데이터에 대해 하나의 모델을 검증해야 함

## Raw meeting log (local only)
<!-- LOCAL-ONLY: begin -->
[Meeting log](../../working_notes/meeting_log/2026-01-05_ hackathon.md)
<!-- LOCAL-ONLY: end -->