@echo off

echo now work here
echo lets schedule a task
schtasks /create /sc DAILY /tn "mytask" /tr "D:\programs\gitcyber\CyberToolsGuide\Projects\Backup.bat" /st 15:52

schtasks /delete /tn "mytask" /f
echo task delted successfully
pause