Connect-VIServer -Server "vCenter.domain" -Username "vcenter-username" -Password "vCenter-password"

$provider = "Vasa-provider name"
Remove-VasaProvider -Provider $provider -Confirm:$false

& "C:\Program Files\DataCore\DataCoreDeployment\SDW\SmartDeploymentWizard.exe" vasaprovider -s "localhost" -p "VasaProvider-password" -i "C:\Users\Administrator\Desktop\Stable3.1.exe" -v "vCenter-username" -l "vCenter-username password"