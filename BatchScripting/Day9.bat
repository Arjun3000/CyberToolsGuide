@echo off
echo Loop from 1 to 5 : 
for /L %%i in (1,1,5) do (
    echo Current Number is : %%i
)
pause
::even numbers between 1 to 100
for /L %%i in (2,2,100) do (
    echo Current number is : %%i
)
pause
::odd numbers between 1 to 100
for /L %%f in (1,2,100) do (
    echo Current number is : %%f
)
pause

::loop through text files
for %%i in (*.md) do (
    echo file found : %%i
)
pause

:: reach until 3

echo reach at 3 then stop
set /a count=0
:loop
if %count% GTR 3 goto end
echo current count is : %count%
set /a count+=1
goto loop

:end
echo its is over.....
pause


echo reading the files
for /F "delims=" %%i in (30-Day-Batch-Scripting.md) do (
    echo %%i
)
pause

set /a count=0
for %%i in (*.md) do (
    echo file found
    set /a count+=1
)
echo we have total %count% files
pause

:: create folders
set /p total=enter how many folder you want : 
for /L %%i in (1,1,%total%) do (
    mkdir DAY%%i
)
echo folders created successfully
pause

:: game
@echo off
echo exit came until game
:loop
set /p input=enter something : 
if /I "%input%"=="exit" goto end
echo set/p input=enter something : 
goto loop
:end
echo thanks for playing
pause



