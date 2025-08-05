@echo off
echo exit came until game
:loop
set /p input=enter something : 
if /I "%input%"=="exit" goto end
set/p input=enter something : 
goto loop
:end
echo thanks for playing
pause

