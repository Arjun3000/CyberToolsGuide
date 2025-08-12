@echo off

net session >nul 2>&1
if errorlevel 1 (
    powershell -Command "Start-Process -Filepath '%~f0' -Verb RunAs"
    exit /b
)

echo runing with admin rights
net session
pause