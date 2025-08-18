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
echo press [1] if you want to disable firewall
echo or
echo press [2] if you want to enable firewall

set /p choice=Press your choice : 
if "%choice%"=="1" (
    netsh advfirewall set allprofiles state off
    echo firewall disabled!
) else if "%choice%"=="2" (
    netsh advfirewall set allprofiles state on
    echo firewall enabled!
) else (
    echo invalid choice
)
pause


