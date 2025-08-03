@echo off
setlocal enabledelayedexpansion
color 0A
echo.
echo =============================WELCOME TO BATCH CALCULATOR================================
echo.
echo.
set /p num1=ENTER THE NUMBER ONE : 
set /p num2=ENTER THE NUMBER TWO : 
echo.
echo ****NICE NUMBERS NOW CHOOSE THE OPERATORS YOU WANT TO USE****
echo.
echo ENTER 1 IF OPERATOR IS "+"
echo ENTER 2 IF OPERATOR IS "-"
echo ENTER 3 IF OPERATOR IS "*"
echo ENTER 4 IF OPERATOR IS "/"
echo ENTER 5 FOR REMAINDER  "%%"
echo.
set /p op=ENTER THE OPERATOR : 
echo.
echo =======================YOUR FINAL RESULT IS=============================
echo.
color 0C
if "%op%"=="1" (
    set /a result=%num1% + %num2%
    echo THE ANSWER WHEN ADDING TWO NUMBERS IS : !result!
)
if "%op%"=="2" (
    set /a result=%num1% - %num2%
    echo THE ANSWER WHEN SUBTRACTING TWO NUMBERS IS : !result!
)
if "%op%"=="3" (
    set /a result=%num1% * %num2%
    echo THE ANSWER WHEN MULTIPLYING TWO NUMBERS IS : !result!
)
if "%op%"=="4" (
    set /a result=%num1% / %num2%
    echo THE ANSWER WHEN DIVIDING TWO NUMBERS IS : !result!
)
if "%op%"=="5" (
    set /a result=%num1% %% %num2%
    echo THE ANSWER WHEN FINDING REMAINDER OF TWO NUMBERS IS : !result!
)
endlocal
pause


