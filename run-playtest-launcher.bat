@echo off
setlocal
rem Helper: run GUI launcher and keep this console open on errors.
rem The launcher binary is built with the manifest URL baked in by publish-playtest.sh.
"%~dp0playtest-launcher.exe" %*
set ERR=%ERRORLEVEL%
echo.
if %ERR% neq 0 (
  echo Exit code %ERR% ^(launcher or game^).
  pause
)
exit /b %ERR%
