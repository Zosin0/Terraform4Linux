// Provider
variable "gcp_project" {
  description = "Nome do projeto na GCP"
  type = string
  default = "gcp-4linux-460412"
}

variable "default_region" {
  description = "Região padrão para provisionamento"
  type = string
  default = "us-central1"
}



# // Subnetwork
# variable "subnet_name" {
#     description = "Nome da sub-rede"
#     type = string
#     default = "subnet-01"
# }

# variable "subnet_range" {
#     description = "Range dos IP's da subnet"
#     type = string
#     default = "10.0.1.0/24"
# }

# // Disco
# variable "disk_name" {
#     description = "Variável para nome do disco"
#     type = string
#     default = "disco-01"
# }

# variable "type_disk" {
#     description = "Tipo do disco"
#     type = string
#     default = "pd-ssd"
# }

# variable "zone" {
#     description = "Zona do disco"
#     type = string
#     default = "us-central1-a"
# }

# variable "size" {
#     description = "Tamanho do disco"
#     type = string
#     default = "10"  
# }

# // VPC
# variable "vpc_name" {
#     description = "Nome da VPC"
#     type = string
#     default = "custom-vpc-aula04"
# }

# variable "bolean_auto_create_subnetworks" {
#     description = "Criação automática de sub-redes"
#     type = bool
#     default = false
  
# }

# // Main

# variable "ip_publico" {
#     type = string
#     default = "ipv4-address"
# }

# variable "fw_name" {
#   type = string
#   default = "allow-ssh"
  
# }

# variable "allow_rule" {
#   default = {
#     protocol = "tcp"
#     ports    = ["22", "80", "8080"]
#   }
# }

# variable "source_ranges" {
#   type = list(string)
#   default = [ "0.0.0.0/0" ]  
# }

# variable "vm_name" {
#   type = string
#   default = "vm-instance-exemplo"
# }

# variable "machine_type" {
#   type = string
#   default = "e2-medium"  
# }

# variable "allow_stopping_for_update" {
#   type = bool
#   default = true
# }
