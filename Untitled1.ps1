$array = get-content -path C:\name.txt


foreach ($item in $array)
{
        
    $securepassword = ConvertTo-SecureString -string 'P@ssw0rd' -asplaintext -force
    New-ADUser -name $item  -AccountPassword $securepassword -Enabled $true -Description 'Sales'

}