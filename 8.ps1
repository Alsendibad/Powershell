#1

$usernamen = @('Jan','John','kees', 'koos')

'Wat een leuke naam ' + $usernamen[0]
'Wat een leuke naam ' + $usernamen[1]
'Wat een leuke naam ' + $usernamen[2]
'Wat een leuke naam ' + $usernamen[3]

#2

$usernamen = @('Jan','John','kees', 'koos')

$usernamen[0] + ' Kijkt geen ek'
$usernamen[1] + ' Kijkt geen ek'
$usernamen[2] + ' Kijkt geen ek'
$usernamen[3] + ' Kijkt geen ek'

#3 

$Array = Get-Localuser
$Array

#4

$Array = Get-Localuser
'Dit is ' $usernamen[0]
'Dit is ' $usernamen[1]
'Dit is ' $usernamen[2]
'Dit is ' $usernamen[3]

5# 

$localuser = Get-LocalUser 

foreach ($item in $localuser) 

{

    'Naam is ' + $item.name

}