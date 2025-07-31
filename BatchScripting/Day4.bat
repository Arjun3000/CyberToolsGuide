@echo off
set /p name=enter your good name : 
echo hello!, %name% it is good to meet you
pause

@echo off
set /p data=enter the lines you want to add in new file : 
echo %data% > output.txt
echo the file is successfully created
pause

@echo off
set /p data1=enter the lines you want to add in output.txt file : 
echo %data1% >> output.txt
echo the file is successfully updated
pause



