@echo off
cd /d "%~dp0"
start http://localhost:5173/sus-game/
npm run dev
pause
