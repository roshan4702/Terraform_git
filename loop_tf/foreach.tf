
resource "local_file" "f2" {
  filename = each.value
  for_each = toset(var.f2)
  content  = "looping"
}
variable "f2" {
  type   = list(string)
  default = ["abc", "xyz"]
}


