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


variable "subnet_name" {
    description = "Nome da sub-rede"
    type = string
    default = "subnet-01"
  
}