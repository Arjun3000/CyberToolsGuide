write-output "Hello World"
$thres = 200MB
Get-process | where-object {$_.WS -gt $thres} | Select-Object -First 50
Get-service | where-object {$_.status -eq "Running"} | Select-Object -First 50
write-output "USER :  $env:username"
write-output "Machine : $env:computername"
write-output "os :  $((get-ciminstance win32_operatingsystem).caption)"
Invoke-webrequest -uri "http://google.com" -OutFile "download.txt"
Get-Content "download.txt"