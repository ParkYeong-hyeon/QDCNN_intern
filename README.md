# Research Project

## Overview

이 repository는 인턴십의 일환으로 수행 중인 연구 프로젝트를 문서화한 것으로, 현재 

- **Quantum Dilated Convolutional Neural Networks (QDCNN)**
- **Quantum Hydra** (Quantum-Hydra-Mamba ablation study)

두 가지 팀 연구를 보조하기 위한 개인적 탐구, 아이디어 정리, 논문 요약 및 작업 메모를 주로 포함한다.

## Quick Start

### Source Repositories
- [QDCNN](https://github.com/JHPark9090/QuantumDilatedCNN.git)
- [Quantum Hydra](https://github.com/JHPark9090/Quantum-Hydra-Mamba)

### Knowledge Base
- [Q-hydra NotebookLM](https://notebooklm.google.com/notebook/bb21fe2d-00b4-4c66-9710-c60502b1f835?authuser=1)

## Documentation

📚 **[Full Documentation →](docs/index.md)**

상세한 문서, 프로젝트별 리소스, 논문 및 개념 정리에 대해서는 [Documentation Index](docs/index.md)를 참고.

## Directory Structure

```
.
├── .cursorrules                # Cursor AI 설정
├── .gitignore                
├── README.md                   # 이 파일
├── docs/                       # 문서 자료
│   ├── _cursor_commands/       # Cursor AI 커스텀 명령어
│   │   ├── tasks/              # 작업 지향 명령어 (objective, fact-based)
│   │   ├── roles/              # 역할 기반 명령어 (perspective-oriented)
│   │   ├── README.md
│   │   ├── USAGE_GUIDE.md
│   │   └── TEST_COMMANDS.md
│   ├── team_meetings/          # 팀 미팅 요약
│   ├── weekly/                 # 주간 정리 
│   ├── index.md                # 문서 목차 및 리소스
│   └── todo.md                 # 단기 할 일 목록
├── working_notes/              # 개인적 탐구
│   ├── project_overview.md     # 전체 프로젝트 개요
│   ├── literature/             # 공유 논문 참고문헌
│   │   └── bib/
│   │       └── references.bib  # 모든 프로젝트 공유 BibTeX
│   ├── qdcnn/                  # QDCNN 프로젝트 노트
│   │   ├── concepts/           # 개념 정리
│   │   ├── insights/           # 캐주얼한 인사이트 (scribble보다 구조화, concepts보다 캐주얼하고 해석적으로)
│   │   ├── literature/         # 논문 요약
│   │   ├── ideas/              # 아이디어 뱅크
│   │   ├── experiment_design/  # 실험 설계
│   │   └── results/            # 결과 분석 (analysis, summaries)
│   ├── qhydra/                 # Quantum Hydra 프로젝트 노트
│   │   ├── concepts/
│   │   ├── insights/
│   │   ├── literature/
│   │   ├── ideas/
│   │   ├── experiment_design/
│   │   └── results/
│   ├── shared/                 # 공유 리소스
│   │   ├── concepts/
│   │   ├── insights/
│   │   └── literature/
│   ├── study/                  # 개인 공부 노트 (선형대수, 고전 ML 등)
│   │   ├── concepts/           
│   │   ├── insights/           
│   │   └── literature/         
│   ├── scribble/               # 원시 탐구 노트
│   ├── daily_log/              # 일일 독서 노트
│   └── (meeting_log/)          # 자세한 미팅 로그 (비공식)
├── notebooks/                  # 실험용 노트북
└── testing_cursor/             # Cursor AI 테스트 (임시)
    └── roles_tasks/            # roles/tasks 테스트 파일
```

## Note

본 저장소의 모든 파일 및 디렉터리 구조는 진행 중인 프로젝트의 일부로서, 향후 변경될 수 있다.
