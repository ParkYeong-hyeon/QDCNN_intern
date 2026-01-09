# 테스트 명령어 리스트

이 문서는 `docs/_cursor_commands/` 시스템을 테스트하기 위한 명령어 예시들을 제공합니다.

## Task-Oriented Commands 테스트

### 1. `@promote` 명령어 테스트

**기본 테스트:**
```
@docs/_cursor_commands/tasks/promote.md
```

**설명**: `working_notes/scribble/2026-01-04.md` 파일의 `[16:06] Quantum Metrics` 섹션에 `@promote_to: /@project/concepts/` 메타데이터가 있습니다. 이 명령어를 실행하면 해당 섹션을 `concepts/` 폴더로 promote해야 합니다.

**예상 결과**: 
- `working_notes/qdcnn/concepts/`에 새 파일 생성 (또는 기존 `quantum_metrics.md` 업데이트)
- scribble 파일의 해당 섹션이 링크로 대체됨

---

### 2. `@analyze` 명령어 테스트

**기본 테스트:**
```
@docs/_cursor_commands/tasks/analyze.md

다음 내용을 분석해줘:
- QCNN과 QDCNN의 차이점
- Entanglement 패턴의 차이
```

**또는 파일 기반:**
```
@docs/_cursor_commands/tasks/analyze.md

@working_notes/qdcnn/concepts/quantum_metrics.md 파일을 분석해줘
```

**예상 결과**: 구조화된 분석 (장단점, 핵심 개념, 연결점 등)

---

### 3. `@summarize` 명령어 테스트

**기본 테스트:**
```
@docs/_cursor_commands/tasks/summarize.md

@working_notes/scribble/2026-01-04.md 파일을 요약해줘
```

**또는 섹션 요약:**
```
@docs/_cursor_commands/tasks/summarize.md

@working_notes/qdcnn/literature/2026-01-03_Absence_of_Barren_Plateaus_in_Finite_Local-Depth Circuits_with_Long-Range_Entanglement.md의 핵심 내용을 요약해줘
```

**예상 결과**: 간결한 요약 (핵심 아이디어, 주요 발견, 결론)

---

### 4. `@compare` 명령어 테스트

**기본 테스트:**
```
@docs/_cursor_commands/tasks/compare.md

QCNN과 QDCNN을 비교해줘
```

**또는 파일 기반:**
```
@docs/_cursor_commands/tasks/compare.md

@working_notes/qdcnn/concepts/local_depth.md와 @working_notes/qdcnn/concepts/quantum_metrics.md를 비교해줘
```

**예상 결과**: 구조화된 비교 (유사점, 차이점, 각각의 특징)

---

## Role-Based Commands 테스트

### 5. `@Reviewer` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/Reviewer.md

다음 주장을 검토해줘:
"QDCNN은 QCNN보다 더 나은 성능을 보인다"
```

**또는 파일 검토:**
```
@docs/_cursor_commands/roles/Reviewer.md

@working_notes/qdcnn/concepts/quantum_metrics.md를 Reviewer 관점에서 검토해줘
```

**예상 결과**: 비판적 검토 (주장의 타당성, 통계적 엄밀성, 대안적 설명 등)

---

### 6. `@LeadAuthor` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/LeadAuthor.md

논문의 Introduction 섹션 초안을 작성해줘. QDCNN과 QCNN을 비교하는 연구의 배경을 포함해줘.
```

**예상 결과**: 고임팩트 스타일의 논문 초안 (hourglass 구조, 교육적 가치 강조)

---

### 7. `@Coder` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/Coder.md

@src/models/baseline_model.py 파일을 검토하고 설명해줘
```

**또는 코드 질문:**
```
@docs/_cursor_commands/roles/Coder.md

양자 회로에서 dilated entanglement를 구현하려면 어떻게 해야 할까?
```

**예상 결과**: 코드 설명, 디버깅, 구현 제안 (PennyLane 기반)

---

### 8. `@Editor` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/Editor.md

다음 텍스트를 편집해줘:
"QDCNN은 QCNN보다 더 나은 성능을 보인다. p=.05에서 유의미한 차이를 보였다."
```

**또는 파일 편집:**
```
@docs/_cursor_commands/roles/Editor.md

@working_notes/qdcnn/concepts/quantum_metrics.md를 Editor 관점에서 다듬어줘
```

**예상 결과**: 포맷팅 수정, 명확성 개선, 일관성 검토 (p-value 포맷, 약어 사용 등)

---

### 9. `@LitExpert` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/LitExpert.md

barren plateau 문제에 대한 최신 논문을 찾아서 요약하고, QDCNN 연구와의 연관성을 설명해줘
```

**또는 문맥화:**
```
@docs/_cursor_commands/roles/LitExpert.md

@working_notes/qdcnn/concepts/local_depth.md의 내용을 관련 문헌과 연결해서 설명해줘
```

**예상 결과**: 관련 논문 요약, 인용 제안, 문맥화된 설명

---

### 10. `@Visualizer` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/Visualizer.md

QCNN과 QDCNN의 entanglement 패턴을 비교하는 그림을 설계해줘
```

**예상 결과**: 과학적 시각화 제안 (양자 회로 다이어그램, 메트릭 플롯 등)

---

### 11. `@Reader` 역할 테스트

**기본 테스트:**
```
@docs/_cursor_commands/roles/Reader.md

@working_notes/qdcnn/concepts/quantum_metrics.md를 읽고, 이해하기 어려운 부분을 지적해줘
```

**예상 결과**: 가독성 피드백 (이해하기 어려운 부분, 흥미로운 부분, 개선 제안)

---

## 복합 테스트 시나리오

### 시나리오 1: Scribble → Concept Promotion
```
1. @docs/_cursor_commands/tasks/promote.md 실행
2. @docs/_cursor_commands/roles/Editor.md로 생성된 파일 다듬기
3. @docs/_cursor_commands/roles/Reviewer.md로 검토
```

### 시나리오 2: 논문 섹션 작성
```
1. @docs/_cursor_commands/roles/LitExpert.md로 관련 문헌 찾기
2. @docs/_cursor_commands/roles/LeadAuthor.md로 초안 작성
3. @docs/_cursor_commands/roles/Reviewer.md로 검토
4. @docs/_cursor_commands/roles/Editor.md로 다듬기
5. @docs/_cursor_commands/roles/Reader.md로 가독성 확인
```

### 시나리오 3: 실험 결과 분석
```
1. @docs/_cursor_commands/tasks/analyze.md로 결과 분석
2. @docs/_cursor_commands/tasks/compare.md로 모델 비교
3. @docs/_cursor_commands/roles/Visualizer.md로 시각화 제안
4. @docs/_cursor_commands/roles/Reviewer.md로 통계적 엄밀성 검토
```

---

## 테스트 체크리스트

각 명령어 테스트 시 확인할 사항:

- [ ] 명령어 파일이 올바르게 읽혔는가?
- [ ] 명령어의 지시사항이 올바르게 따랐는가?
- [ ] 예상된 결과가 나왔는가?
- [ ] 역할 기반 명령어의 경우, 해당 역할의 관점이 반영되었는가?
- [ ] 작업 지향 명령어의 경우, 절차가 올바르게 실행되었는가?
