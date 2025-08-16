@echo off
:loop
powershell -Command "Invoke-WebRequest -Uri http://192.168.203.129:5000 -Method POST -Body 'alive=%COMPUTERNAME%&time=%date%_%time%'"
timeout /t 10 >nul
goto loop


