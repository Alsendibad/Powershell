'Welke map moet er gekopieerd worden?'
$ANTW = Read-Host

'Waarnaar moet het gekopieerd worden?'
$mapnaam = Read-Host

If (!(test-Path -path $mapnaam))
{
    
    New-Item -path $mapnaam -ItemType Directory
    

}

'Wil je een COPY OF MOVE uitvoeren?'
$copyormove = Read-Host

$items = Get-ChildItem -path $ANTW

if ($copyormove -eq 'move')
{

    foreach ($item in $items)
    {
            'weet je zeker dat je ' + $item.fullname + ' wilt moven? J/N ! ' 
            $jaofnee = Read-Host
        If ($jaofnee -eq 'J')

        {
            move-Item -Path $item.FullName  -Destination ($mapnaam + '\' +$item.Name)
        }

        Elseif ($jaofnee -eq 'n')

        {
            'Ok dan niet!'

         }
    }     
}

Elseif($copyormove -eq 'COPY')
{

foreach ($item in $items)
    {
            'weet je zeker dat je ' + $item.fullname + ' gekopieerd wilt hebben? J/N ! ' 
            $jaofnee = Read-Host
        If ($jaofnee -eq 'J')

        {
            copy-Item -Path $item.FullName  -Destination ($mapnaam + '\' +$item.Name)
        }

        Elseif ($jaofnee -eq 'n')

        {
            'Ok dan niet!'

         }
    }     

}

