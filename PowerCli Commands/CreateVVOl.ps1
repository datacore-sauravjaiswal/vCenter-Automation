#This does not work yet.

Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$vmhost = Get-VMHost -Name "esxi.domain.name"
$myDatastore = Get-Datastore -Name "vTests"
$sp = Get-SpbmStoragePolicy -Name "Rep-Target-off"
New-VM -Name X-Sources -DiskGB 4 -MemoryGB 1 -Datastore $myDatastore -ResourcePool $vmhost -StoragePolicy $sp