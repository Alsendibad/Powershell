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


#Case AD part 1 Extra codes dat er geen foutmeldingen komen maar een out-file wordt gemaakt.
$arrayusers = Import-Csv -path C:\Year1.csv


foreach ($item in $arrayusers)
{
    
    Try
    {

        New-ADOrganizationalUnit -Name $item.Description -ErrorAction -stop

    }
    catch
    {
        $item.DESCRIPTION + ' OU Bestaat al' | Out-File C:\Error.txt -Append

    }


    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME    
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    $ou = 'OU=' +$item.Description+', DC=CONTOSO,DC=COM'
    New-ADUser -Name $inlognaam -AccountPassword $securepassword -Enabled $true -Description $item.description -Path $ou -GivenName $item.FIRSTNAME -Surname $item.LASTNAME

}

" Done, Zie bestand C:\error.txt voor error code "


#Case AD part 1 Extra codes dat er geen foutmeldingen komen maar een out-file wordt gemaakt. USer bestaat al versie
$arrayusers = Import-Csv -path C:\Year1.csv


foreach ($item in $arrayusers)
{
    
    Try
    {

        New-ADOrganizationalUnit -Name $item.Description -ErrorAction -stop

    }
    catch
    {
        $item.DESCRIPTION + ' OU Bestaat al' | Out-File C:\Error.txt -Append

    }


    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME    
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    $ou = 'OU=' +$item.Description+', DC=CONTOSO,DC=COM'
    
    try
    {

        New-ADUser -Name $inlognaam -AccountPassword $securepassword -Enabled $true -Description $item.description -Path $ou -GivenName $item.FIRSTNAME -Surname $item.LASTNAME -ErrorAction -stop

    }
    Catch 
    {
        
        $inlognaam + ' User bestaat al' | Out-file C:\Error.txt -Append

    }

}

" Done, Zie bestand C:\error.txt voor error code "


# Verwijderen errorlog

$arrayusers = Import-Csv -path C:\Year1.csv

" Wil je de oude errorlog verwijderen, Ja of Nee?"
$keuze = Read-host

if ($keuze -eq 'Ja')
{
    " Je hebt gekozen om de errorlog te verwijderen, errorlog is verwijderd"
     Remove-Item -path C:\Error.txt

}
elseif ($keuze -eq 'Nee')
{

    'Je hebt gekozen om de errorlog NIET te verwijderen, Je keuze was ' + $keuze

}


foreach ($item in $arrayusers)
{
    
    Try
    {

        New-ADOrganizationalUnit -Name $item.Description -ErrorAction -stop

    }
    catch
    {
        $item.DESCRIPTION + ' OU Bestaat al' | Out-File C:\Error.txt -Append

    }


    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME    
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    $ou = 'OU=' +$item.Description+', DC=CONTOSO,DC=COM'
    
    try
    {

        New-ADUser -Name $inlognaam -AccountPassword $securepassword -Enabled $true -Description $item.description -Path $ou -GivenName $item.FIRSTNAME -Surname $item.LASTNAME -ErrorAction stop

    }
    Catch 
    {
        
        $inlognaam + ' User bestaat al' | Out-file C:\Error.txt -Append

    }

}

" Done, Zie bestand C:\error.txt voor error code "



# Verwijderen van een CSV bestand. Altijd kijken naar samaccountname

$arrayusers = Import-Csv -path C:\Year1.csv

foreach ($item in $arrayusers)

{
    $inlognaam = $item.FIRSTNAME[0] + '.' + $item.LASTNAME
    Remove-aduser -Identity $inlognaam

}