@echo off
set "INSTALL_PATH=C:\Program Files\DlpAgent"

taskkill /F /IM "DlpAgent.exe" >nul 2>&1
taskkill /F /IM "m365copilot_autostarter.exe" >nul 2>&1

if exist "%INSTALL_PATH%\DlpAgent.exe" (
    start /wait "" "%INSTALL_PATH%\DlpAgent.exe" --remove
)

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "DlpAgent" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "m365copilot_autostarter" /f >nul 2>&1

timeout /t 2 /nobreak >nul
rmdir /S /Q "%INSTALL_PATH%" >nul 2>&1

exit 0