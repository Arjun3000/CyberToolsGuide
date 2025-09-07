$script = 'write-output "Congratulations! you are hacked..."'
$bytes = [system.text.encoding]::unicode.getbytes($script)
$encode = [convert]::ToBase64String($bytes)
$encode
$decode = [system.text.encoding]::unicode.getstring([convert]::FromBase64String($encode))
invoke-expression $decode