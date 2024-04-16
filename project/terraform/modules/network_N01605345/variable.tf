variable "common_tags" {}

variable "N01605345_Rg_name" {}

variable "N01605345_Rg_location" {}

variable "N01605345_vnet" {
  type    = string
  default = "N01605345_vnet"
}

variable "N01605345_vnet_aspace" {
  default = ["10.0.0.0/16"]
}

variable "N01605345_subnet" {
  type    = string
  default = "N01605345_subnet"
}

variable "nsg" {
  type    = string
  default = "N01605345_nsg"
}

variable "N01605345_subnet_aspace" {
  default = ["10.0.0.0/24"]
}
