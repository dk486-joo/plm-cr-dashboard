@echo off
echo ============================================
echo  PLM CR Dashboard - GitHub Push Script
echo ============================================
echo.

REM Step 1: GitHub에서 새 저장소를 먼저 생성하세요!
echo 1. https://github.com/new 에서 'plm-cr-dashboard' 저장소를 생성하세요
echo 2. 생성 후 아무 키나 누르세요...
pause >nul

REM Step 2: Remote 추가 및 푸시
echo.
echo Adding remote and pushing...
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" remote add origin https://github.com/dk486-joo/plm-cr-dashboard.git
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" branch -M main
"C:\Program Files\Git\bin\git.exe" -C "C:\Users\dk486.joo\Desktop\plm-dashboard" push -u origin main

echo.
echo ============================================
echo  Push 완료!
echo.
echo  GitHub Pages 활성화:
echo  1. https://github.com/dk486-joo/plm-cr-dashboard/settings/pages
echo  2. Source를 'GitHub Actions'로 변경
echo  3. 자동 배포됨
echo.
echo  대시보드 URL:
echo  https://dk486-joo.github.io/plm-cr-dashboard/
echo ============================================
pause
