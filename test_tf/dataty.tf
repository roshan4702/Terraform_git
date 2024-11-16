resource "local_file" "file1" {
  filename = "a1"
  content  = var.numbervar  
}

resource "local_file" "file2" {
  filename = "a2"
  content  = var.boolvar  
}

resource "local_file" "file3" {
  filename = "a3"
  content  = var.stringvar  
}

resource "local_file" "file4" {
  filename = "a4"
  content  = var.anyvar 
}

