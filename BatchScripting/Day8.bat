@echo off
mkdir folders
pause

md folder2

echo hello > new.txt

copy new.txt D:\programs\gitcyber\CyberToolsGuide\folders

move new.txt D:\programs\gitcyber\CyberToolsGuide\folder2

rmdir /s /q folder2 folders
