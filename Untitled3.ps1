
'Please guess the number 1 or 2 and i will tell you if you were right!'

$Inmyhead = Get-random -Minimum 1 -Maximum 3 

$myguess = Read-Host

if($Inmyhead -eq $myguess)
{


    'Yes, you guessed it! It was ' + $Inmyhead

}


Else
{


    'Sorry, it was 1 and you guessed ' + $Inmyhead

}


