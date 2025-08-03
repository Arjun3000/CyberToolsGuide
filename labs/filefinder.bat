@echo off
setlocal enabledelayedexpansion
echo ==========================WELCOME TO THE FILE FINDER BY ARJUN SHARMA============================
pause
color 0B
set /p filename=ENTER THE FILE OR FOLDER NAME YOU WANT TO FIND IN THIS FOLDER : 
echo.
echo YOU ENTERED : %filename%
echo IF NOT CORRECT KINDLY RESTART THE PROGRAM
echo.
echo =======================FINDING THE FILE========================================
color 0D
echo.
if exist "%filename%" (
    echo THE FILE IS PRESENT IN THE DIRECTORY %cd%
    echo THANKS FOR USING THE CODE. THIS CODE IS WRITTEN BY ARJUN SHARMA
) else (
    echo THE FILE IS NOT PRESENT.
    set /p create=PRESS 1 IF YOU WANT TO CREATE ONE WITH THE SAME FILE NAME : 
    set create=!create!
    if "!create!"=="1" (
        echo. > "!filename!"
        echo THE FILE IS CREATED WITH THE NEW TIMESTAMP. YOU CAN FIND IT WITH THE DATE MODIFIED.
    ) else (
        echo THANKS FOR USING THE CODE. THIS CODE IS WRITTEN BY ARJUN SHARMA
    )
)
pause