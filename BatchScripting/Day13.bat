@echo off
setlocal enabledelayedexpansion

:loop
echo create a folder
set /p folder=enter the folder name : 
if exist %folder% (
    echo folder already exists. choose again.
    goto loop
) else ( mkdir %folder% & echo folder created successfully & goto end )
:end
echo file will be created every five seconds in folder : %folder%
echo press Ctrl+C to stop.
timeout /t 2 >nul


:makefile

set count=0
for %%f in ("%folder%/*.txt") do ( 
   set /a count+=1
)
if !count! GEQ 5 (
    for /f "delims=" %%f in ('dir /b /o:d "!folder!\*.txt"') do (
        del "!folder!\%%f"
        color c
        echo deleted the oldest file : %%f
        goto afterdelete
    )
)
:afterdelete
set timestamp=%date%_%time%
set timestamp=%timestamp::=%
set timestamp=%timestamp:/=%
set timestamp=%timestamp:.=%
set timestamp=%timestamp: =_%

set "filename=!timestamp!.txt"
(
    echo timestamp : !timestamp!
    echo user name : %USERNAME%
    echo computername : %COMPUTERNAME%
    echo os version : %os%
    echo.
    echo =============================system info=========================================
    echo.
    systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" /C:"Total Physical Memory" /C:"Available Physical Memory"
    echo.
    tasklist
) > "%folder%\!filename!"

color a
echo created : !filename!

timeout /t 5 >nul
goto makefile

pause
color f