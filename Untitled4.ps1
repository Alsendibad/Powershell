
'Please guess the number 1 or 5 and i will tell you if you were right!'

$Computernumber = Get-random -Minimum 1 -Maximum 5 

[int]$guess = Read-Host

if ($Computernumber -eq $guess)
{


    'Yes, you guessed it! It was ' +$Computernumber

}

elseif ($Computernumber -gt $guess)
{

    'You guess ' +$guess + ' is too low and therefore you lose, it was ' +$Computernumber

}

elseif ($Computernumber -LT $guess) 
{

    'You guess ' +$guess  + ' is too high and therefore you lose, it was ' +$Computernumber

}
