terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "random" {
  # Configuration options can be specified here if needed
}

variable "f1" {
  default = "abc.txt"
  type    = string
}

variable "f2" {
  type    = string
  default = "this is an example for default var"
}

variable "f3" {
  type = string
}

variable "f4" {

}

output "file_id" {
  value = local_file.file1.id
}
resource "local_file" "file1" {
  filename = var.f2
  content  = var.f1
}

                
