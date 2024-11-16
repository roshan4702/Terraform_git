resource "local_file" "ros1" {
  filename = "roab34c"
  content  = "this is rosa 1"
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "ros2" {
  filename = "xy12z"
  content  = "this is rosb 2"
  lifecycle {
    prevent_destroy = false
  }

}

