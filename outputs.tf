output "IP_AD_DNS" {
    value = google_compute_instance.servidor-ad-dns.network_interface.0.access_config.0.nat_ip
    description = "Endereço IP do Servidor AD_DNS"
  
}

output "IP_WSUS" {
    value = google_compute_instance.servidor-wsus.network_interface.0.access_config.0.nat_ip
    description = "Endereço IP do Servidor WSUS"
  
}

output "IP_IIS" {
    value = google_compute_instance.servidor-iis.network_interface.0.access_config.0.nat_ip
    description = "Endereço IP do Servidor IIS"
  
}

output "IP_BANCO" {
    value = google_compute_instance.servidor-banco.network_interface.0.access_config.0.nat_ip
    description = "Endereço IP do Servidor Banco de Dados"
  
}
