$BoardArray = @('1','2','3','4','5','6','7','8','9')

function show-board

{


Write-Host "-------------"
Write-Host "|"$BoardArray[0] "|" $BoardArray[1]"|" $BoardArray[2] "|"
Write-Host "-------------"
Write-Host "|"$BoardArray[3] "|" $BoardArray[4]"|" $BoardArray[5] "|"
Write-Host "-------------"
Write-Host "|"$BoardArray[6] "|" $BoardArray[7]"|" $BoardArray[8] "|"
Write-Host "-------------"

}

Show-board 

$BoardArray[0] = 'X'

show-board

