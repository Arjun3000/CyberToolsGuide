@echo off
echo wmic working
echo cpu info
wmic cpu get name, NumberofCores, NumberofLogicalProcessors
systeminfo
tasklist /fi "imagename eq chrome.exe"
wmic memorychip get capacity, speed

wmic os get caption, version, osarchitecture
wmic process list brief