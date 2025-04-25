@echo off
setlocal enabledelayedexpansion

set "SOURCE=%~dp0templates"
set "VERSIONS_DIR=%USERPROFILE%\AppData\Roaming\JetBrains\Idea"

for /d %%d in ("%VERSIONS_DIR%*") do (
    set "LATEST_VERSION=%%d"
)

set "TARGET=%LATEST_VERSION%\fileTemplates"

if not exist "%TARGET%" (
    mkdir "%TARGET%"
)

xcopy /E /Y "%SOURCE%" "%TARGET%"

echo Templates installed successfully.
echo Restart IntelliJ IDEA.
pause