@echo off
echo ===================================
echo   Pizzaro Chatbot - Push GitHub
echo ===================================
echo.

cd /d %~dp0\..

echo [1/5] Verificando git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git no esta instalado
    pause
    exit /b 1
)

echo [2/5] Inicializando repositorio...
git init
git add .
git commit -m "feat: chatbot inicial con n8n + Groq + Sheets"

echo [3/5] Conectando con GitHub...
git remote add origin https://github.com/camilo052021/pizzaro-chatbot.git 2>nul
git branch -M main

echo [4/5] Subiendo archivos...
git push -u origin main

echo.
echo ===================================
echo   Listo! Repo subido a:
echo   github.com/camilo052021/pizzaro-chatbot
echo ===================================
pause