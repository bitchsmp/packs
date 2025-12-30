@echo off
setlocal

REM Absolute path of this script
set SCRIPT_DIR=%~dp0

REM Source file
set SOURCE=%SCRIPT_DIR%stats.yml

REM Destination = MythicMobs (2 levels up)
set DEST=%SCRIPT_DIR%..\..

REM Resolve full absolute path
for %%I in ("%DEST%") do set DEST=%%~fI

echo Source: %SOURCE%
echo Destination: %DEST%

if not exist "%SOURCE%" (
    echo ERROR: stats.yml not found.
    pause
    exit /b 1
)

copy /Y "%SOURCE%" "%DEST%\stats.yml"

if errorlevel 1 (
    echo ERROR: Copy failed.
) else (
    echo SUCCESS: stats.yml copied to %DEST%
)

pause
