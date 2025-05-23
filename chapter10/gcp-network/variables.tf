variable "name" {
  type = string
  default = "Deverá ser adicionado um nome para sua rede"
}

variable "description" {
  type = string
  default = "Deverá ser adicionado uma descrição para sua rede"
  
}

variable "auto_create_subnetworks" {
  type = bool
  description = "Será criada uma sub-rede automaticamente"
  default = true   
  
}