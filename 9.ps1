$array = @('peter1' , 'linda1' , 'Jan1' , 'Marie1')
$securepassword = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -force

Foreach ($item in $array)

{ 

    New-LocalUser -name $item -Password $securepassword -Description 'Sales'

}

#2

$array = @('peter1' , 'linda1' , 'Jan1' , 'Marie1')
$securepassword = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -force

Foreach ($item in $array)

{ 

    New-LocalUser -name $item -Password $securepassword -Description 'Sales'

}
