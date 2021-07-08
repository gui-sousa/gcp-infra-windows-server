provider "google" {
    #Busca chave de acesso, gerada no GCP
    credentials = file("infrawindows-su.json")
    #Define qual projeto será modificado pelo Terraform
    project = "${var.projeto}"
    #Define a região
    region = "${var.local}"

}
