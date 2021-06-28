'Geef de naam op van de proces (bijvoorbeeld Notepad) ?'

$Processname = Read-Host


'Wat is de maximale aantal handles (hele getallen)?'


$maxhandles = Read-Host


$processobject = Get-Process | Where-Object {$_.ProcessName -eq $Processname}


if ($processobject.Handles -lt $maxhandles)

{

    'Het gaat goed! Handles is ' + $processobject.Handles + ' van process ' + $processobject.processname
}

else

{ 

    'Het gaat NIET goed! Handles is, ' + $processobject.Handles  + ' van process ' + $processobject.ProcessName



}


