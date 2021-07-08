# AD & DNS 
Dism.exe /online /enable-feature /featurename:DNS-Server-Full-Role
install-windowsfeature dns -includemanagementtools
if(!(Import-Module ADDSDeployment -ea ignore)){
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
}
Install-ADDSDomainController -InstallDns -DomainName "corp.local" -Force

#Promover Controlador de Dominio
#Install-ADDSDomainController -InstallDns -Credential (Get-Credential) -DomainName (Read-Host "Domain to promote into")