#
$thres = 200MB
Get-process | Where-object {$_.WS -gt $thres}