variable "rg_name" {
  default = "rosterraform_rg"
}

variable "location" {
  default = "australiacentral"
}
variable "address_space" {
  default = ["10.1.0.0/16"]
  type    = list(string)
}

variable "vnet_name" {
  default = "roshank_vnet"
}
variable "subnet_space" {
  default = ["10.1.0.0/24", "10.1.10.0/24"]
  type    = list(string)
}

variable "subnet_name" {
  default = "tfzam_snet"
}
variable "nic_name" {
  default = "nicrz"
}
variable "ip_name" {
  default = "ip2"
}
variable "vm_name" {
  default = "roshanwin"
}

variable "admin" {
  default = "azureuser"
}
variable "size" {
  default = "Standard_B1s"
}

variable "user" {
  default = "azureuser"
}
variable "admin_password" {
  description = "The admin password for the Windows VM"
  type        = string
}
variable "sku" {
  default = "2019-Datacenter"
}
variable "nsg" {
  default = "nsg3"
}


