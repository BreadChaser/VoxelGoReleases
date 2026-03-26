@echo off
setlocal
rem Optional helper: same folder as playtest-launcher.exe.
rem EASIER: copy voxel-playtest.json.example to voxel-playtest.json, edit manifest_url, double-click the .exe.
rem Or set MANIFEST below and use this .bat.

set "MANIFEST=PASTE_YOUR_MANIFEST_URL_HERE"

if "%MANIFEST%"=="PASTE_YOUR_MANIFEST_URL_HERE" (
  echo No manifest URL. Either:
  echo   1. Create voxel-playtest.json next to this file with "manifest_url": "https://..."
  echo   2. Or edit this .bat and set MANIFEST= to your latest.json URL
  pause
  exit /b 1
)

"%~dp0playtest-launcher.exe" -manifest "%MANIFEST%" %*
set ERR=%ERRORLEVEL%
echo.
if %ERR% neq 0 (
  echo Exit code %ERR% ^(launcher or game^).
  pause
)
exit /b %ERR%
