write-output "getting info form the server"
Invoke-WebRequest -Uri "http://192.168.203.129/test.txt" -OutFile "download.txt" 
Get-Content "download.txt"