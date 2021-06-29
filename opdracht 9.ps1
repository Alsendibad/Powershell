$arrayusers = Import-Csv -path C:\users.csv


foreach ($item in $arrayusers)
{
    New-ADOrganizationalUnit -Name $item.beschrijving
        
    $securepassword = ConvertTo-SecureString -string $item.wachtwoord -asplaintext -force
    $ou = 'OU=' +$item.BESCHRIJVING+', DC=CONTOSO,DC=COM'
    New-ADUser -name $item.naam  -AccountPassword $securepassword -Enabled $true -Description $item.beschrijving -Path $ou

}

