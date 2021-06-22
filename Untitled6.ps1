

'Van welke service wil je de status weten'
$servicename = Read-Host

$serviceobject = Get-Service -name $servicename

if ($serviceobject.Status -eq 'running')
{

    Stop-Service -name $serviceobject.Name

}

elseif ($serviceobject.Status -eq 'stopped')
{

    Start-Service -name $serviceobject.Name

}
'De service ' + $serviceobject.Name + ' is ' $serviceobject.Status