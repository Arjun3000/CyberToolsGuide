write-output "------SYSTEM INFO SCRIPT----------"
write-output "NAME = $env:USERNAME"
write-output "MACHINE = $env:COMPUTERNAME"
write-output "OS = $((Get-CimInstance Win32_OperatingSystem).Caption)"
write-output "-----Top 5 Process-----------"
Get-process | Sort-object | select-object -first 5 | Format-table -autosize
write-output "-----Top 5 Services-----------"
Get-service | Where-object {$_.status -eq "Running"} | select-object -first 5 | format-table -autosize
Set-ExecutionPolicy Restricted -scope CurrentUser