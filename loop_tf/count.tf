resource "local_file" "f1" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "looping"
}
variable "filename" {
  type    = list(string)
  default = ["roshan", "zammer"]
}

