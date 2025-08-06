@echo off
echo current working directory is : %cd%

echo lets create a nested folders
mkdir netcat\folder\hacked

echo lets move
cd netcat/folder/hacked
echo currently in the : %cd%

mkdir hello
::cd ..\..\..\..
echo currently in : %cd%
cd ..\..\..
echo script is at : %~dp0
cd ..\..\..
echo current in : %cd%