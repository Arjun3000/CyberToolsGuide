@echo off

echo ===============THIS IS THE SCRIPT TO TAKE BACKUP 😄===========================
echo.
:loop
set /p srcpath=ENTER THE PATH OF THE SOURCE FOLDER : 
set /p conf=ARE YOU SURE YOU WANT TO TAKE THE BACKUP OF THIS FOLDER (PRESS Y/N) : 
if /I "%conf%"=="Y" (
    goto end
) else (
    echo KINDLY CHOOSE AGAIN..
    goto loop
)
:end
set timestamp=Backup_%date%_%time%
set timestamp=%timestamp:/=%
set timestamp=%timestamp::=%
set timestamp=%timestamp:.=_%
set timestamp=%timestamp: =0%
set /p backuppath=ENTER THE PLACE WHERE YOU WANT TO STORE THE BACKUP : 
set foldername=%timestamp%
mkdir %backuppath%/%foldername%

xcopy %srcpath% %backuppath%\%foldername% /E /I /H /Y
echo DATA COPIED SUCCESSFULLY

echo.
rem echo ======ENTER THE RETENTION DAYS FOR EVERY FILE IS 2 DAYS ========
rem forfiles /P "%backuppath%" /M "Backup_*" /D -2 /C "cmd /c rd /s /q @path"
set /p days=ENTER THE NUMBER OF RETENTION DAYS : 
forfiles /P "%backuppath%" /M "Backup_*" /D -%days% /C "cmd /c rd /s /q @path"
echo THE OLDER FILES WERE DELETED. TO AVOID REDUNDANCY
echo.
pause