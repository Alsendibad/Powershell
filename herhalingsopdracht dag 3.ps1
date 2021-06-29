#1

(get-date).DayOfWeek



#2

'Moet er een map aangemaakt worden, J is Ja , N is Nee?'
$keuze = Read-host

if ($keuze -eq 'J')
{

    'Je hebt gekozen om een mapje aan te maken, Hoe mag het mapje gaan heten?'
    $mapnaam = read-host 
    New-Item -path $mapnaam -ItemType Directory


}

Elseif ($keuze -eq 'N')
{

    ' Je hebt gekozen om geen map te maken, je keuze was' + $keuze


}




#3
'Moet er een map aangemaakt worden, J is Ja , N is Nee?'
$keuze = Read-host

if ($keuze -eq 'J')
{
    
    

    'Je hebt gekozen om een mapje aan te maken, Hoe mag het mapje gaan heten?'
    $mapnaam = read-host 
    
    'Weet je het echt zeker dat er een map aangemaakt worden, J is Ja , N is Nee?'
     $keuze = Read-host
     If ($keuze -eq 'J')
     
     {
        
        New-Item -path $mapnaam -ItemType Directory

     }

     elseif ($keuze -eq 'N')
     {

     ' Je hebt gekozen om geen map te maken, je keuze was ' + $keuze

     }

        
}

Elseif ($keuze -eq 'N')
{

    ' Je hebt gekozen om geen map te maken, je keuze was ' + $keuze


}

#4

$Array = Get-content -Path E:\Verwijder.txt

Foreach ($item in $Array)

{

    New-item -path $item -ItemType Directory

}



#5


$Array = Get-content -Path E:\Verwijder.txt
Foreach ($item in $Array)

{

    Remove-Item -path $item -Force

}



#6

'Super handig inderdaad.'


#7 Verwijderen 1 voor 1

$Array = Get-content -Path E:\Verwijder.txt
Foreach ($item in $Array)

{

    'Moeten de mappen daadwerkelijk verwijderd worden, J is Ja , N is Nee?'
     $keuzeverwijderen = Read-host
    
    if ($keuzeverwijderen -eq 'J')
    {
        
       Remove-Item -path $item -Force

    }
         
    Elseif ($keuzeverwijderen -eq 'N')
    {

    ' Je hebt gekozen om geen map te maken, je keuze was' + $keuzeverwijderen

    }

}


# 7 Optie twee, verwijderen beide in 1 keer!


$Array = Get-content -Path E:\Verwijder.txt

'we gaan mappen verwijderen, heel gevaarlijk weet je het zeker!? J is Ja , N is Nee'

$Zekerweten = Read-Host

if($Zekerweten -eq 'j')
{
    Foreach ($item in $Array)

    {
           Remove-Item -path $item -Force

        ' Je hebt gekozen om de map te verwijderen, je keuze was ' + $keuzeverwijderen
    }

}

else
{

    'ok dan niet!!'

}


# 8

$date = (get-date).DayOfWeek 

if ($date -eq 'Donderdag')
{

    'Yes, its meatlof day!'

}

Else
{

    'No, its cheese day'

}


# Extra opdracht

$usersToImport = Import-Csv -Path E:\users.csv


foreach($item in $usersToImport)
{

    $SecurePassword = ConvertTo-SecureString -String $item.WACHTWOORD -AsPlainText -Force
    New-LocalUser -Name $item.NAAM -Description $item.AFDELING -Password $SecurePassword


}