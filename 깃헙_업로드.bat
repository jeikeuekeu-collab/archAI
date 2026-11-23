@echo off
chcp 65001 > nul

cd /d "%~dp0"

echo [INFO] Git 환경 및 원격 저장소 확인...
git remote -v
echo.
echo [INFO] GitHub로 파일 전송을 시작합니다...
echo [INFO] 잠시 후 웹 브라우저에 GitHub 인증 창이 열리면 [Authorize git-ecosystem] 버튼을 클릭해 주세요.
echo.

git push -u origin main

if errorlevel 1 (
    echo.
    echo [ERROR] 업로드에 실패했습니다. 브라우저 인증 또는 인터넷 연결을 확인해 주세요.
) else (
    echo.
    echo [OK] GitHub 저장소로 업로드가 성공적으로 완료되었습니다!
)

pause
