@echo off
set name=arjun
echo hello,%name%!
pause

@echo off
set /p uname=enter the name : 
echo hello, this is %uname%
pause

@echo off
set /p folder=enter the name for the folder : 
mkdir %folder%
echo folder created with the name : %folder%
pause

@echo off
set first=Arjun
set second=Sharma
set combined=%first% %second%
echo %combined%
pause

@echo off
echo username=%USERNAME%
echo admin=%SystemRoot%
pause

@echo off
set /p lang=enter your favrouite programing language : 
echo awesome, %lang% is nice!
pause