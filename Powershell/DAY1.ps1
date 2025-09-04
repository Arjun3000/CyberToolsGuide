Get-Process | Sort-Object CPU -Descending | Select-Object -First 5
Get-process | sort-object CPU -Descending | Select-object -last 5
$user = $env:USERNAME
write-output "current user : $user"

function getsysinfo {
    get-process | select-object -first 5
    get-service | where-object {$_.status -eq "Running"} | Select-Object -last 10
}
getsysinfo