resource "local_file" "res1" {
  filename = "roabc"
  content  = "this is resa 1"
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "res2" {
  filename = "xyz"
  content  = "this is resb 2"
  lifecycle {
    prevent_destroy = false
  }

}




