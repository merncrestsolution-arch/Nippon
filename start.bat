@echo off
cd /d "%~dp0"
title Nippon POS - Local Server
echo.
echo  NIPPON ELECTRICALS - Smart POS
echo  Starting local server...
echo.

where node >nul 2>&1
if %errorlevel% equ 0 (
  start "Nippon POS Server" node "%~dp0server.js"
  timeout /t 2 /nobreak >nul
  start "" "http://localhost:8080"
  goto :done
)

where python >nul 2>&1
if %errorlevel% equ 0 (
  start "Nippon POS Server" python -m http.server 8080
  timeout /t 3 /nobreak >nul
  start "" "http://localhost:8080/nippon-electricals-pos.html"
  goto :done
)

where py >nul 2>&1
if %errorlevel% equ 0 (
  start "Nippon POS Server" py -m http.server 8080
  timeout /t 3 /nobreak >nul
  start "" "http://localhost:8080/nippon-electricals-pos.html"
  goto :done
)

echo  ERROR: Node.js or Python not found.
echo  Install Node.js from nodejs.org (recommended)
echo.
pause
exit /b 1

:done
echo.
echo  Browser opened. App runs at: http://localhost:8080
echo  (If browser shows error, wait 2 seconds and refresh)
echo  Close the "Nippon POS Server" window when done.
echo.
pause
