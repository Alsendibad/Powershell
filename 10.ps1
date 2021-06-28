Optie 1

$array = Get-Content -Path E:\mappen.txt

Foreach ($item in $array)

{ 

    New-item -path $item -itemtype Directory

}

Optie 2 Tekstbestand zonder C:\

$array = Get-Content -Path E:\mappenzonderc.txt


Foreach ($item in $array)

{ 

    New-item -path ('C:\'+ $item) -itemtype Directory

}

Optie 3 Zonder tekstbestand

$array = @('C:\map9','c:\map10','C:\map11')


Foreach ($item in $array)

{ 

    New-item -path $item -itemtype Directory

}