$serviceobject = Get-Service -name 'spooler'

if ($serviceobject.Status -eq 'running')
{

    Stop-Service -name $serviceobject.Name

}

elseif ($serviceobject.Status -eq 'stopped')
{

    Start-Service -name $serviceobject.Name

}

Get-Service -Name $serviceobject.Name
