# Vraag1

'powerShell Rocks'

# vraag2

'Wat wil je laten weergeven op het scherm?'

$weergeven = read-host

$weergeven

# vraag 3

'Welke gebruiker moet uitgeschakeld worden'

$user = Read-Host

Disable-LocalUser -name $user

'gebruiker ' + $user + ' wordt uitgeschakeld '
