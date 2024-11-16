resource "local_file" "test_tf" {
  filename = "rosh.txt"
  content  = "this is modified file"

}
