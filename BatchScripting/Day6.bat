@echo off
if exist "Day1.bat" (
    echo file exists.
 ) else (
    echo not avaliable...
)
pause

set name=arjun 
if defined name (
    echo defined
)
pause

echo current directory : %cd%
echo checking the file Day1.bat.....

if exist "Day1.bat" (
    echo is present
) else (
    echo not present so creating one....
    echo this is a file > Day1.bat
)
pause