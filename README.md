# PLM CR Dashboard - Pulsator

Samsung PLM(SPLM)에서 Pulsator 관련 CR(Change Request) 데이터를 수집하여 시각화하는 대시보드입니다.

## 📊 대시보드 기능

- **KPI 카드**: 전체 CR 수, 완료/진행중/검토중/반려 건수, Critical 건수
- **상태별 분포**: 도넛 차트로 CR 상태 분포 시각화
- **우선순위별 분포**: 도넛 차트로 우선순위 분포 시각화
- **카테고리별 분포**: 막대 차트로 카테고리별 CR 분포
- **모델별 분포**: 수평 막대 차트로 모델별 CR 분포
- **월별 추이**: 라인 차트로 월별 CR 발생 추이
- **CR 상세 목록**: 검색, 필터링, 정렬이 가능한 테이블
- **상세 모달**: CR ID 클릭 시 상세 정보 표시

## 🚀 로컬 실행

```bash
cd plm-dashboard
python -m http.server 8080
```

브라우저에서 http://localhost:8080 접속

## 🔄 데이터 갱신

PLM 사이트에서 데이터를 다시 수집하려면:

```bash
python plm_scraper.py
```

수집된 데이터는 `cr_data.json`에 저장됩니다.

## 🌐 GitHub Pages 배포

1. GitHub에 새 저장소 생성 (이름: `plm-cr-dashboard`)
2. 이 디렉토리를 푸시:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: PLM CR Dashboard"
   git remote add origin https://github.com/dk486-joo/plm-cr-dashboard.git
   git branch -M main
   git push -u origin main
   ```
3. GitHub 저장소 Settings > Pages > Source를 "GitHub Actions"로 설정
4. 자동 배포 워크플로우가 실행됨

## 📁 파일 구조

```
plm-dashboard/
├── index.html                    # 대시보드 메인 페이지
├── cr_data.json                  # CR 데이터
├── .github/
│   └── workflows/
│       └── deploy.yml            # GitHub Pages 배포 워크플로우
└── README.md
```

## 🛠 기술 스택

- **Frontend**: HTML5, CSS3, JavaScript
- **Chart Library**: Chart.js 4.x
- **Data Scraping**: Selenium (Python)
- **Deployment**: GitHub Pages
