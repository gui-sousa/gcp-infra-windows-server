#Instala WSUS e ISS
Install-WindowsFeature -Name UpdateServices -IncludeManagementTools
#Cria diretorio de pastas WSUS
New-Item 'C:\WSUS' -ItemType Directory
& 'C:\Program Files\Update Services\Tools\WsusUtil.exe' postinstall CONTENT_DIR=C:\WSUS