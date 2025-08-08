@echo off
setlocal enabledelayedexpansion
set timestamp=%date%_%time%
set timestamp=%timestamp:/=%
set timestamp=%timestamp::=%
set timestamp=%timestamp: =_%
set timestamp=%timestamp:.=%

:loop
echo create a folder
set /p folder=set folder's name : 
if exist %folder% (
    echo already exist choose something new.
    goto loop
) else (
    mkdir %folder%
    goto end
)
:end
set /p files=enter how many files you want to create : 
for /L %%i in (1,1,%files%) do (
    set "filename=!timestamp!.txt_%%i"
    echo. > %folder%\!filename!
)

pause