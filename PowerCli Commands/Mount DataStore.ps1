Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$vmhost1 = Get-VMHost -Name "esxia.domain.name"
$vmhost2 = Get-VMHost -Name "esxiB.domain.name"

$container = Get-VvolStorageContainer -Name "vTests"

$vmhost1, $vmhost2 | New-Datastore -Name "vTests" -VvolStorageContainer $container