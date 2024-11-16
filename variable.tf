variable "rg_name" {
  default = "roshannew_tf_rg"
}

variable "location" {
  default = "westus2"
}

variable "address_space" {
  default = ["10.1.0.0/16"]
  type    = list(string)
}

variable "vnet_name" {
  default = "newterraform_vnet"
}
variable "subnet_space" {
  default = ["10.1.0.0/24", "10.1.10.0/24"]
  type    = list(string)
}

variable "subnet_name" {
  default = "newterraform_snet"
}

variable "key" {
  default = "ssh_key"
}
variable "nic_name" {
  default = "ronic"
}
variable "pip_name" {
  default = "pip"
}
variable "ip_name" {
  default = "ip"
}
variable "sku" {
  default = "22.04-LTS"
}
variable "vm_name" {
  default = "roshanlinvm"
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
variable "nsg" {
  default = "nsg"
}
variable "subscription_id" {
  description = "The Subscription ID to use for Azure resources"
  type        = string
}
