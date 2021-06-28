'Welke user wil je zien?'

$username = Read-Host

$userobject = Get-LocalUser -name $username

if ($userobject.Enabled -eq 'true')

{

    Disable-LocalUser -Name $userobject.Name


}

elseif ($userobject.Enabled -eq 'false')

{ 

    Enable-LocalUser -Name $userobject.Name


}

'De gebruiker ' + $userobject.Name + ' is ' + $userobject.Enabled

 