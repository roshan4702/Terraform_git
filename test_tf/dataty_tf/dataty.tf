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

resource "local_file" "file5" {
  filename = "a5"
  content  = var.listvar[0]
}

resource "local_file" "file6" {
  filename = "a6"
  content  = var.listvar1[2]
}

resource "local_file" "file7" {
  filename = "a7"
  content  = var.mapvar.name
}
resource "local_file" "file8" {
  filename = "a8"
  content  = var.tuplevar[1]
}

resource "local_file" "file9" {
  filename = "a9"
  content  = var.objectvar.id
}

