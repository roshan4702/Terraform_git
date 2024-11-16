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

variable "fA" {
  default = "xyz.txt"
  type    = string
}

variable "fB" {
  type    = string
  default = "new_file_name.txt"
}

variable "fC" {
  default = "1"
  type    = string
}

variable "fD" {
  default = "2"
  type    = string

}

output "file_id" {
  value = local_file.fileA.id
}

resource "local_file" "fileA" {
  filename = var.fB
  content  = var.fA 
} 
resource "local_file" "fileA" {
  filename = "fileA"
  content  = <<EOF
export TR_VAR_global_var="\zammer\""
EOF
}
