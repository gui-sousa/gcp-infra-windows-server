# gcp-infra-windows-server
Projeto provê uma infraestrutura em Windows Server com:

- Active Directory e DNS
- WSUS
- IIS
- Banco de dados SQL

# Credenciais do Projeto
Primeiro passo, crie uma conta de serviço no Google Cloud e depois baixe o arquivo .json de acesso ao projeto. Depois substitua:

- credentials = file("seu_arquivo.json")

# Observações 
- Projeto destinado a aplicação de estudos, não deve ser levado a produção sem antes ajustar as regras de firewall no arquivo "firewall.tf"

- Após a execução do "Terraform Apply" pode levar algum tempo até a instacia ficar disponivel para acesso via RDP

- A instancia "banco_instancia.tf" faz a instalação autonoma do sql via powershell, mas pode ser substituida por uma imagem SQL
