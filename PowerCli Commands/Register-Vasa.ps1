Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$provider = "New-VasaProvider-Name"
$url = "Url for Vasa Provider"
$pass = "password"

New-VasaProvider -Name $provider -Username "Vasa-UserName" -Password $pass -Url $url -Force