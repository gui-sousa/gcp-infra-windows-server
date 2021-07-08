#Cria Instacia de VM com Windows Server 2016
resource "google_compute_instance" "servidor-banco" {
   name = "servidor-banco"
   machine_type = "${var.instacia}"
   zone = "${var.zona}"
   boot_disk {
      initialize_params {
      image = "${var.imagem-windows}"
   }
   
}

#Definie Script de Inicialização
metadata = {
  windows-startup-script-ps1 = file("deploy_sql.ps1")
}

#Define Configuração de Rede
network_interface {
   network = "default"
   access_config {}
}

service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
   }
} 





