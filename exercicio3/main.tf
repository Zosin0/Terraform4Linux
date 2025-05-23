# resource "google_compute_address" "static_ip" {
#   name = var.ip_publico
# }

resource "google_compute_firewall" "allow_ssh_ex"  {
    name = var.fw_name
    network = google_compute_network.vpc_network.name

    allow {
      protocol = var.allow_rule["protocol"]
      ports    = var.allow_rule["ports"]
    }
    source_ranges = var.source_ranges
}

resource "google_compute_instance" "vm1" {
    name = var.vm_names[0]
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }

    attached_disk {
      source = var.disk_name[0]	
    }

    network_interface {
      network = google_compute_network.vpc_network.id
      subnetwork = google_compute_subnetwork.subnet.id
      access_config {
        // nat_ip = google_compute_address.static_ip.address
      }
    }

    metadata = {
      ssh-keys = "zoser:${file("/home/zoser/.ssh/gcp.pub")}"
    }


    metadata_startup_script = <<-EOF
      #!/bin/bash
      sudo apt update
      sudo apt install nginx -y

      cat <<EOT > /var/www/html/index.html
      <!DOCTYPE html>
      <html lang="pt-br">
      <head>
        <meta charset="UTF-8">
        <title>Bem-vindo</title>
        <style>
          body {
            background-color: #282c34;
            color: #61dafb;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
          }
          h1 {
            font-size: 2.5rem;
            text-shadow: 2px 2px #000;
          }
        </style>
      </head>
      <body>
        <h1>Bem-vindo ao curso Terraform 4 Linux -> VM01 🚀</h1>
      </body>
      </html>
      EOT
    EOF

     
}
resource "google_compute_instance" "vm2" {
    name = var.vm_names[1]
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }
    
    attached_disk {
      source = var.disk_name[1]	
    }

    network_interface {
      network = google_compute_network.vpc_network.id
      subnetwork = google_compute_subnetwork.subnet.id
      access_config {
        // nat_ip = google_compute_address.static_ip.address
      }
    }

    metadata = {
      ssh-keys = "zoser:${file("/home/zoser/.ssh/gcp.pub")}"
    }


    # metadata_startup_script = <<-EOT
    #   #!/bin/bash

    #   sudo apt update
    #   sudo apt install nginx -y
    # EOT 

    #metadata_startup_script = "sudo apt update; sudo apt install nginx -y; "

    metadata_startup_script = <<-EOF
      #!/bin/bash
      sudo apt update
      sudo apt install nginx -y

      cat <<EOT > /var/www/html/index.html
      <!DOCTYPE html>
      <html lang="pt-br">
      <head>
        <meta charset="UTF-8">
        <title>Bem-vindo</title>
        <style>
          body {
            background-color: #282c34;
            color: #61dafb;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
          }
          h1 {
            font-size: 2.5rem;
            text-shadow: 2px 2px #000;
          }
        </style>
      </head>
      <body>
        <h1>Bem-vindo ao curso Terraform 4 Linux -> VM02 🚀</h1>
      </body>
      </html>
      EOT
    EOF



}




