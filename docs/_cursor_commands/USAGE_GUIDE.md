# 명령어 사용 가이드

## Roles와 Tasks 복합 사용에 대한 분석

### 장점 ✅

1. **유연한 워크플로우**
   - 역할의 관점에서 작업을 수행할 수 있음
   - 예: `@Reviewer` 관점에서 `@analyze` 수행

2. **효율적인 작업 흐름**
   - 순차적으로 연결하면 자연스러운 워크플로우
   - 예: promote → edit → review

3. **맥락 유지**
   - 역할을 먼저 채택하면 이후 대화에서도 관점 유지 가능

### 단점 ⚠️

1. **명확성 부족**
   - 동시에 여러 명령어 사용 시 우선순위 불명확
   - 예: `@Reviewer @analyze` - 어떤 것이 우선인가?

2. **예측 어려움**
   - 역할이 작업 후에도 유지되는지 불명확
   - 작업이 역할의 관점을 따르는지 불명확

3. **디버깅 어려움**
   - 문제 발생 시 원인 파악이 어려움
   - 어떤 명령어가 어떤 결과를 만드는지 추적 어려움

## 권장 사용 패턴

### 패턴 1: 순차적 워크플로우 (가장 권장) ⭐

각 단계를 별도 메시지로 분리:

```
1단계: @docs/_cursor_commands/tasks/promote.md
2단계: @docs/_cursor_commands/roles/Editor.md, polish the result
3단계: @docs/_cursor_commands/roles/Reviewer.md, review the polished file
```

**장점:**
- 명확한 단계 구분
- 각 단계의 목적이 분명함
- 문제 발생 시 어느 단계인지 파악 쉬움
- 역할이 자연스럽게 유지됨

### 패턴 2: 역할 관점 + 작업 (비권장) ⚠️

한 메시지에서 역할 관점을 명시하고 작업을 요청하는 것은 **비권장**합니다:

```
❌ @docs/_cursor_commands/roles/Reader.md 관점을 유지하면서 @docs/_cursor_commands/tasks/analyze.md 해줘
```

**문제점:**
- 역할의 자의적 해석이 작업의 객관적 절차로 포장될 수 있음
- 작업 결과물이 사실처럼 보이지만 실제로는 특정 관점의 해석일 수 있음
- tasks의 "건조하고 사실 중심" 원칙이 훼손될 수 있음
- 결과물의 성격이 모호해짐 (객관적인가? 주관적인가?)

**대안:**
- 작업만 사용하여 객관적 결과물 생성
- 그 다음 역할로 검토/피드백

### 패턴 3: 작업 먼저, 역할 나중 (권장)

작업을 먼저 수행하고, 결과를 역할로 검토:

```
1단계: @docs/_cursor_commands/tasks/summarize.md
2단계: @docs/_cursor_commands/roles/Editor.md, edit the summary
```

**장점:**
- 작업 결과를 명확히 확인 후 검토 가능
- 각 단계의 출력이 분명함

## 비권장 패턴

### ❌ 동시 사용 (비권장)

```
@docs/_cursor_commands/roles/Reviewer.md @docs/_cursor_commands/tasks/analyze.md
```

**문제점:**
- 어떤 것이 우선인지 불명확
- 실행 순서가 예측 불가능
- 결과 해석이 어려움

### ❌ 중첩된 역할 (비권장)

```
@docs/_cursor_commands/roles/Reviewer.md, check this as @docs/_cursor_commands/roles/Editor.md
```

**문제점:**
- 역할 간 충돌 가능
- 지시사항이 모순될 수 있음

## 실제 사용 예시

### 예시 1: Scribble → Concept Promotion (권장 패턴)

```
1. @docs/_cursor_commands/tasks/promote.md
   → scribble에서 concept으로 promote

2. @docs/_cursor_commands/roles/Editor.md
   → 생성된 concept 파일을 다듬기

3. @docs/_cursor_commands/roles/Reviewer.md
   → 다듬어진 파일을 검토
```

### 예시 2: 논문 섹션 작성 (권장 패턴)

```
1. @docs/_cursor_commands/roles/LitExpert.md
   → 관련 문헌 찾기

2. @docs/_cursor_commands/roles/LeadAuthor.md
   → 초안 작성

3. @docs/_cursor_commands/roles/Reviewer.md
   → 검토

4. @docs/_cursor_commands/roles/Editor.md
   → 다듬기

5. @docs/_cursor_commands/roles/Reader.md
   → 가독성 확인
```

### 예시 3: 작업 후 역할로 검토 (권장) ⭐

```
1단계: @docs/_cursor_commands/tasks/analyze.md
   → 객관적 분석 수행

2단계: @docs/_cursor_commands/roles/Reviewer.md
   → 분석 결과를 Reviewer 관점에서 검토
```

**장점:**
- 객관적 결과물과 주관적 피드백이 명확히 구분됨
- 작업의 사실 중심 원칙이 유지됨
- 역할의 관점이 명시적으로 드러남

## 실험 결과: 세 가지 사용 패턴 비교

동일한 논문을 세 가지 방식으로 요약한 실험 결과를 통해 각 패턴의 차이를 확인했습니다.

### 실험 1: 역할 관점 + 작업 (`@Reader 관점 + @summarize`)

**명령어:**
```
@docs/_cursor_commands/roles/Reader.md 관점을 유지하면서 
@working_notes/qdcnn/literature/논문.md를 
@docs/_cursor_commands/tasks/summarize.md 해줘
```

**결과 특징:**
- ✅ **구조화된 요약**: Reader 관점을 summarize 절차에 적용
- ✅ **교육적 가치 강조**: "Why This Matters" 섹션 포함
- ✅ **Reader 피드백 포함**: "What's Hard to Understand" 섹션으로 혼란스러운 부분 지적
- ✅ **프로젝트 맥락 연결**: "Connection to QDCNN Research" 섹션 추가
- ✅ **균형잡힌 접근**: 기술적 내용과 가독성의 균형

**적합한 상황:**
- 논문 요약이지만 특정 관점(예: 일반 독자)에서 이해하기 쉽게 만들고 싶을 때
- 요약과 동시에 피드백이 필요할 때
- 프로젝트 맥락과 연결된 요약이 필요할 때
- 다만 roles로 의한 자의적인 해석이 task로 인해 자명한 것처럼 쓰일 수 있음을 염두

### 실험 2: 작업만 (`@summarize`)

**명령어:**
```
@docs/_cursor_commands/tasks/summarize.md
@working_notes/qdcnn/literature/논문.md
```

**결과 특징:**
- ✅ **순수 요약**: 객관적이고 간결한 요약
- ✅ **기술적 세부사항 포함**: 수식, 전문 용어 포함 (예: $\mathrm{Var}_{U}[C] \ge 4^{-\beta r \chi^{2}}$)
- ✅ **구조 재구성**: 원문 구조를 더 간결하게 재구성
- ✅ **핵심 집중**: 모든 내용을 동일 비중으로 다루지 않고 핵심에 집중
- ❌ **관점 없음**: 특정 독자 관점이나 피드백 없음

**적합한 상황:**
- 빠르고 객관적인 요약이 필요할 때
- 기술적 세부사항을 포함한 전문가용 요약이 필요할 때
- 특정 관점 없이 순수하게 내용만 요약하고 싶을 때

### 실험 3: 역할만 (`@Reader`)

**명령어:**
```
@docs/_cursor_commands/roles/Reader.md
@working_notes/qdcnn/literature/논문.md를 읽고 요약해줘
```

**결과 특징:**
- ✅ **독서 노트 형식**: 1인칭 톤 ("I", "My perspective", "For me")
- ✅ **개인적 피드백**: "What I Found Most Interesting", "What I Found Confusing" 섹션
- ✅ **질문 중심**: "Key Questions I Have" 섹션으로 독자의 질문 제시
- ✅ **직관적 설명**: 기술적 세부사항보다 직관과 실용적 의미에 중점
- ✅ **대화형 톤**: 독자와의 대화처럼 느껴지는 형식

**적합한 상황:**
- 브레인스토밍이나 아이디어 탐색이 필요할 때
- 논문을 읽고 개인적인 반응과 질문을 정리하고 싶을 때
- 특정 관점에서의 피드백이 주 목적일 때
- 대화형으로 논문 내용을 탐색하고 싶을 때

### 비교 요약

| 특성 | 역할 + 작업 | 작업만 | 역할만 |
|------|------------|--------|--------|
| **톤** | 균형잡힌, 교육적 | 객관적, 전문적 | 개인적, 대화형 |
| **구조** | 구조화된 요약 + 피드백 | 간결한 요약 | 독서 노트 형식 |
| **기술적 세부사항** | 중간 (필요시 포함) | 상세 (수식 포함) | 최소 (직관 중심) |
| **피드백** | 포함 (섹션으로) | 없음 | 중심 (개인적 반응) |
| **프로젝트 맥락** | 포함 가능 | 없음 | 제한적 |
| **1인칭 사용** | 없음 | 없음 | 있음 |
| **질문 제시** | 제한적 | 없음 | 중심 |

### 선택 가이드

**언제 "역할 + 작업"을 사용할까?**
- 특정 관점에서 요약이 필요하지만, 동시에 구조화된 결과물도 원할 때
- 요약과 피드백을 동시에 얻고 싶을 때
- 프로젝트 맥락과 연결된 요약이 필요할 때

**언제 "작업만"을 사용할까?**
- 빠르고 객관적인 요약이 필요할 때
- 기술적 세부사항을 포함한 전문가용 요약이 필요할 때
- 특정 관점 없이 순수하게 내용만 요약하고 싶을 때

**언제 "역할만"을 사용할까?**
- 브레인스토밍이나 아이디어 탐색이 필요할 때
- 논문에 대한 개인적인 반응과 질문을 정리하고 싶을 때
- 대화형으로 논문 내용을 탐색하고 싶을 때

## 결론

**역할과 작업은 분리 사용을 권장합니다.**

### 권장 사용 패턴

- ✅ **작업만 사용**: 객관적이고 사실 중심의 결과물이 필요할 때
  - 예: `@tasks/summarize.md` - 순수 요약
  - 예: `@tasks/analyze.md` - 사실 기반 분석
  - **장점**: 건조하고 객관적, 자의적 해석 없음

- ✅ **역할만 사용**: 관점, 피드백, 브레인스토밍이 필요할 때
  - 예: `@roles/Reader.md` - 독서 노트, 피드백
  - 예: `@roles/Reviewer.md` - 비판적 검토
  - **장점**: 명확한 관점, 자의적 해석이 명시적으로 드러남

- ✅ **순차적 사용**: 작업 후 역할로 검토
  - 1단계: `@tasks/summarize.md` - 객관적 요약 생성
  - 2단계: `@roles/Reviewer.md` - 요약 검토 및 피드백
  - **장점**: 객관적 결과물과 주관적 피드백이 명확히 구분됨

### 비권장: 혼합 사용

- ❌ **역할 + 작업 동시 사용**: `@roles/Reader.md 관점을 유지하면서 @tasks/summarize.md 해줘`
  - **문제점**:
    - 역할의 자의적 해석이 작업의 객관적 절차로 포장될 수 있음
    - 작업 결과물이 사실처럼 보이지만 실제로는 특정 관점의 해석일 수 있음
    - tasks의 "건조하고 사실 중심" 원칙이 훼손될 수 있음
    - 결과물의 성격이 모호해짐 (객관적인가? 주관적인가?)

**핵심 원칙:**
1. **명확한 구분**: 작업은 객관적, 역할은 주관적 관점
2. **순차적 사용**: 작업으로 결과물 생성 → 역할로 검토/피드백
3. **결과 확인**: 각 단계의 결과를 확인하고 다음 단계 진행
4. **목적에 맞는 선택**: 
   - 객관적 결과물이 필요하면 → 작업만
   - 관점/피드백이 필요하면 → 역할만
   - 둘 다 필요하면 → 작업 먼저, 그 다음 역할로 검토
