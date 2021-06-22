
'Hoe heet je?'

$name = Read-Host

if($name -eq 'Alsendi')
{


    'welkom ' + $name

}

elseif ($name -eq 'Piet')
{


    'Je dient je bij de directie te melden ' + $name

}

Else
{


    'Ik ken je niet ' + $name

}
