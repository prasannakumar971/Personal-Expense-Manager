@echo off
title Personal Expense Manager Launcher
echo ====================================================
echo Starting Personal Expense Manager...
echo ====================================================

echo 1. Starting Backend API (Port 5000)...
start "Expense Manager Backend (Port 5000)" cmd /k "cd /d %~dp0server && node server.js"

timeout /t 2 /nobreak >nul

echo 2. Starting Frontend UI (Port 3000)...
start "Expense Manager Frontend (Port 3000)" cmd /k "cd /d %~dp0client && npm run dev"

timeout /t 3 /nobreak >nul

echo 3. Opening Application in Browser...
start http://localhost:3000

echo ====================================================
echo Both servers are running!
echo Browser opened at http://localhost:3000
echo ====================================================
