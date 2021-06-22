'Please guess the number between 1 and 10 and i will tell you if you were right!'

$Computernumber = Get-random -Minimum 1 -Maximum 10 

[int]$guess = Read-Host

While ($Computernumber -ne $guess)

{

    if ($Computernumber -gt $guess)
    { 

        'Your guess ' +$guess + ' is too Low '
    }
    Elseif ($Computernumber -lt $guess)

    {

        'Your guess ' +$guess  + ' is too high '
    }


    "Please guess again between 1 and 10!"
    
    $guess =Read-Host

}

' Yes, thats correct, Congrats!, It was indeed ' +$Computernumber


    

