$script = 'write-output "execution in memeory successfull"'
$bytes = [system.text.encoding]::unicode.GetBytes($script)
$encoded = [convert]::ToBase64String($bytes)
$encoded
$decode = [system.text.encoding]::unicode.getstring([convert]::FromBase64string($encoded))
invoke-expression $decode