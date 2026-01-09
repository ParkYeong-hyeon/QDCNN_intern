# Ideas Review & Direction Discussion

**Date**: 2026-01-08  
**Context**: 개인적 아이디어에 대한 피드백 및 연구 방향 논의
---

## What We Talked About

- [Scribble 노트](../working_notes/qdcnn/scribble/2026-01-08.md)에서 논의된 아이디어들에 대한 피드백
  - 양자 데이터의 적극적 사용
  - Hardware-aware 접근
  - QDCNN에 대한 생각 - 해석에 대해서
  - Metric 계산과 해석에 대한 의문
- 연구실의 현재 연구 방향과 제안된 아이디어 간의 차이점 논의
- QDCNN에서 중간 measurement에 대한 의문 해소

---

## Given Context

**연구실의 Hardware-aware 접근 위치:**
- 제안된 의견과 다르게, 현재 연구실에서 논의되는 hardware-aware approach는 단순히 하드웨어 제약을 반영하는 수준을 넘어 그 한계를 적극적으로 활용하거나 우회하려는 흐름으로 볼 수 있음
- Hardware-aware ansatz design, multi-chip ensemble, diffusion 기반 접근으로 갈수록, 하드웨어 제약을 적극적으로 이용하려 함

**연구실의 양자 데이터 사용에 대한 위치:**
- 제안된 의견과 다르게, 현재 연구실에서 논의되는 양자 데이터의 사용은 quantum advantage를 증명하는 쪽에 초점이 맞춰져 있음
- 만약 제안된 의견을 바탕으로 새롭게 실험을 설계한다면, 양자 네이티브 접근(양자 데이터의 특성과 모델의 특성에 대한 연구)과 모델 성능 간의 상관성을 증명해야 함에 유의해야 함

---

## Emerging Ideas / Directions

- 양자 메트릭의 해석 범위를 고전적 확률이 통합된 확장된 지표로 재정의할 가능성
- 중간 measurement를 통한 통계적 복원을 통해 metric의 형식적 의미를 보존하는 접근

---

## Open Questions

- 양자 네이티브 접근과 모델 성능 간의 상관성을 어떻게 증명할 것인가?
- 중간 measurement가 포함된 경우와 그렇지 않은 경우의 metric 해석 차이를 어떻게 명확히 할 것인가?

---

## Quick Decisions (if any)

---

## Immediate Next Steps

- [ ] 제안된 아이디어들을 연구실의 현재 연구 방향과 조화시키는 방안 모색
- [ ] 양자 네이티브 접근과 모델 성능 간의 상관성 증명을 위한 실험 설계 검토

---

## Notes / Loose Thoughts

**QDCNN에서 중간 measurement에 대한 의문 해소:**

QDCNN 구조에서 중간에 measurement를 도입하는 경우, "모든 가능성의 중첩을 담고 있는 상태"로서의 density matrix가 가지는 해석적 의미가 유지된다고 보기는 어렵다. 다만 여러 measurement 결과에 대한 평균, 혹은 적절한 후처리를 통한 통계적 복원을 통해 metric 자체의 형식적 의미를 보존하는 것은 여전히 가능할 수 있다.

**개인적인 노트:**
오히려 이 과정을 통해서 양자 메트릭의 해석 범위를 고전적 확률이 통합된 확장된 지표로 재정의할 가능성도 열려 있다고 생각한다.  


**Hardware-aware 접근의 세 가지 방향을 아래와 같이 정리할 수 있을 것 같음:**
1. **Hardware-aware algorithm design**
   - 회로 깊이, 게이트 종류 등 같은 표현이더라도 더 하드웨어 친화적인 구조 탐색
   - 게이트를 가하는 시간, measurement 이후의 hangover effect, 큐비트의 종류, 큐비트 연산 방식 등 하드웨어 변수를 설계 시 고려
   - 진입 난이도가 높고 실험 어려움. 좀 더 물리적인 양자 컴퓨팅스러운 접근

2. **Multi-chip ensemble**
   - 모델 차원에서 하드웨어 개선
   - Hardware-aware algorithm design의 첫 번째 측면을 더 적극적으로 반영
   - 다중 회로 orchestration을 도입한 접근

3. **Diffusion 기반 접근**
   - 노이즈를 적극적으로 이용하는 방향
   - 고전적인 접근(가우시안 노이즈를 일부로 삽입) 혹은 양자적 native 접근 둘 다 포함 가능

## Raw meeting log (local only)
<!-- LOCAL-ONLY: begin -->
[Meeting log](../../working_notes/meeting_log/2026-01-08_ideas_review_direction.md)
<!-- LOCAL-ONLY: end -->
