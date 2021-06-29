#Case AD part 1 $inlognaam >> variabele gemaakt. [0] betekent pak het eerste letter van de voornaam. 

$arrayusers = Import-Csv -path C:\Year1.csv


foreach ($item in $arrayusers)
{
    New-ADOrganizationalUnit -Name $item.Description
    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME    
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    $ou = 'OU=' +$item.Description+', DC=CONTOSO,DC=COM'
    New-ADUser -Name $inlognaam -AccountPassword $securepassword -Enabled $true -Description $item.description -Path $ou -GivenName $item.FIRSTNAME -Surname $item.LASTNAME

}

#optie 2 werkt ng niet!!

$arrayusers = Import-Csv -path C:\Year1.csv


foreach ($item in $arrayusers)
{
    New-ADOrganizationalUnit -Name $item.Description
    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME    
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    $ou = 'OU=' +$item.Description+', DC=CONTOSO,DC=COM'
    New-ADUser -Name '$item.FIRSTNAME[0] + ',' + $item.LASTNAME' -AccountPassword $securepassword -Enabled $true -Description $item.description -Path $ou -GivenName $item.FIRSTNAME -Surname $item.LASTNAME

}