@echo off

cd /d "%~dp0"

echo UnrealEditor.exeプロセスを確認中...
tasklist /FI "IMAGENAME eq UnrealEditor.exe" 2>NUL | find /I /N "UnrealEditor.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo 既存のUnrealEditor.exeを終了中...
    taskkill /IM "UnrealEditor.exe" /F >NUL 2>&1
    echo プロセス終了を待機中...
    timeout /t 3 /nobreak >NUL
)

echo UnrealEditor.exeを起動中...
start UE5.4\Engine\Binaries\Win64\UnrealEditor.exe ..\..\..\..\Speichern\Speichern.uproject -IgnoreChangelist