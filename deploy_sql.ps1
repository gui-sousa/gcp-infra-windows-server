# Link com local para o download
$origem = 'https://go.microsoft.com/fwlink/?linkid=870039'
# Destino do Arquivo após o download
$destino = 'c:\SQL.exe'
#Download
Invoke-WebRequest -Uri $origem -OutFile $destino
#Inicia a Instalação do SQL em modo silencioso sem interação
Start-Process C:\SQL.exe /Quiet 