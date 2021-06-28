$BoardArray = @('1','2','3','4','5','6','7','8','9')


function SHow-Board
{
    Write-Host "-------------"
    Write-Host "|"$BoardArray[0] "|" $BoardArray[1]"|" $BoardArray[2] "|"
    Write-Host "-------------"
    Write-Host "|"$BoardArray[3] "|" $BoardArray[4]"|" $BoardArray[5] "|"
    Write-Host "-------------"
    Write-Host "|"$BoardArray[6] "|" $BoardArray[7]"|" $BoardArray[8] "|"
    Write-Host "-------------"

}

$count = 9
SHow-Board
$piece ='X'
" Geef je naam speler 1!"
$Player1 = Read-Host
"Geef je naam speler 2!"

$Player2 = Read-Host

$PlayerOnTurn = $Player1
while ($count -gt 0)
{
    
    "Geef het nummer" +$PlayerOnTurn +" en ik maak er een " + $piece + " van"

    [int]$nummer = Read-Host

    $BoardArray[$nummer -1] = $piece

    if($piece -eq 'X')
    {
        
        $piece = 'O'

    }
    else
    {
        
        $piece = 'X'

    }

    if($PlayerOnTurn -eq $Player1)
    {

        $PlayerOnTurn = $Player2

    }

    else
    {

        $PlayerOnTurn = $Player1

    }
    SHow-Board
    $count = $count -1
}