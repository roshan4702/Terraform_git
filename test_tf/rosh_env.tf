resource "local_file" "env_var" {
  filename = "fileA" 
  content  = "export TR_VAR_global_var="zammer"_
}

