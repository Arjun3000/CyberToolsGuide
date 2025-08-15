@echo off

echo.
echo testing network connection
ping google.com

echo.
echo testing network ip
ipconfig /all

echo.
echo testing network 
netstat -ano

echo.
echo testing network hope count
tracert 127.0.0.1


echo.
echo testing
netsh wlan show profile name="LPU Wireless" key=clear
pause

echo now performing PING OF DEATH
ping -l 65500 -t 127.0.0.1
pause









