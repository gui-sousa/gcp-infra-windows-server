resource "google_compute_firewall" "default" {
    name = "firewall-infra-windows"
    network = "default"

    allow {
      protocol = "icmp"
    }
    allow {
      protocol = "tcp"
      ports = ["3389","5986","80","443"]
    }
  
}