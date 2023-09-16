Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$mySourceVM = Get-VM -Name "New Virtual Machine"
$vmhost = Get-VMHost -Name "esxi.domain.name"
$myDatastore = Get-Datastore -Name "DS-vTest"
$myReferenceSnapshot = Get-Snapshot -VM $mySourceVM -Name "snap"
$sp = Get-SpbmStoragePolicy -Name "Rep-Target-off"
$rg = Get-SpbmReplicationGroup -VM $mySourceVM -ErrorAction Ignore
New-VM -Name MyLinkedCloneVM425 -VM $mySourceVM -LinkedClone -ReferenceSnapshot $myReferenceSnapshot -ResourcePool $vmhost -Datastore $myDatastore -StoragePolicy $sp -ReplicationGroup $rg



#Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
