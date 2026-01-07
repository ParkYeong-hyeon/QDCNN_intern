# Research Project

## Overview
이 repository는 인턴십의 일환으로 수행 중인 연구 프로젝트를 문서화한 것으로,

- Quantum Dilated Convolutional Neural Networks(QDCNNs)
- Quantum Hydra 

두 가지 팀 연구를 보조하기 위한 개인적 탐구, 아이디어 정리, 논문 요약 및 작업 메모를 주로 포함한다.

## Directory Structure
```
.
├── .gitignore                
├── README.md                   # 이 파일
├── docs/                       # 문서 자료
│   ├── team meetings/          # 팀 미팅 요약
│   ├── weekly/                 # 주간 정리 
│   ├── decisions/              # 알아야 할 결정 사항 정리
│   ├── index.md                # 목차, 개요
│   └── todo.md                 # 단기 할 일 목록
├── env/                        # 실행 환경 설정
│   ├── environment.yml         # Conda 환경 정의
│   └── requirements.txt        # pip 패키지 의존성 목록
├── experiments/                # 간단한 실험 정리 폴더
│   └── 0000_template/          
├── working_notes/              # 개인적 탐구
│   ├── experiment_design/      # 실험 설계 관련 노트(*draft*)
│   │   ├── analysis_plan/    
│   │   ├── baselines/         
│   │   ├── benchmarks/       
│   │   └── data_plan/          
│   ├── ideas/                  # 연구 아이디어
│   ├── literature/             # 논문 및 참고 문헌 정리
│   │   ├── README.md           # 문헌 정리 방식 안내
│   │   └── bib/                # 인용 정보(BibTeX)
│   ├── scribble/               # 낙서
│   └── (meeting_log/)          # 자세한 미팅 로그 (비공식)
├── notebooks/                  # 실험용 노트북
├── reports/                    # 결과 정리 (*draft*)
│   ├── figures/        
│   ├── tables/        
├── scripts/                    # 실행 스크립트 (실험, 전처리 등)
└── src/                        # 간단한 실험용 소스 코드(*draft*)
    ├── __init__.py          
    ├── config/               
    │   └── default.yaml      
    ├── data/             
    ├── models/             
    ├── training/            
    └── utils/               

```

## Quick start
### 기반이 되는 source repo
- [Q-hydra](https://github.com/JHPark9090/Quantum-Hydra-Mamba)
- [QDCNN](https://github.com/JHPark9090/QuantumDilatedCNN.git) 

### 기반이 되는 knownledge base
- [Q-hydra](https://notebooklm.google.com/notebook/bb21fe2d-00b4-4c66-9710-c60502b1f835?authuser=1)




본 저장소의 모든 파일 및 디렉터리 구조는 진행 중인 프로젝트의 일부로서, 향후 변경될 수 있다.
report, scripts, src, experiments 디렉터리는 현재 개발 중이며, 추후 단계에서 구성될 예정이다.