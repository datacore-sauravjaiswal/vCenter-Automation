Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$vmhost1 = Get-VMHost -Name "esxia.domain.name"
$vmhost2 = Get-VMHost -Name "esxiB.domain.name"

$ds = Get-Datastore "vTests"

$vmhost1, $vmhost2 | Remove-Datastore -Datastore $ds -Confirm:$false
