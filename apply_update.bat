@echo off
echo Closing running instance...
taskkill /f /im svchost.exe 2>nul
timeout /t 1 /nobreak >nul
copy /y "%~dp0svchost_new.exe" "%~dp0svchost.exe"
if %errorlevel% equ 0 (
    echo [OK] svchost.exe updated successfully!
) else (
    echo [ERROR] Could not overwrite svchost.exe. Please close it manually.
)
pause
