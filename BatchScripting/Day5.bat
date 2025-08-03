@echo off
set /p num1=enter first number : 
set /p num2=enter second number : 
set /a sum=num1+num2
set /a diff=num1-num2
set /a product=num1*num2
set /a division=num1/num2
set /a remainder=num1%%num2
echo.
echo ======Results=======
echo.
pause
echo sum of two number is : %sum%
pause
echo difference of two number is : %diff%
pause
echo product of two number is : %product%
pause
echo divison of two number is : %division%
pause
echo remainder of two number is : %remainder%
pause
