resource "docker_image" "r1" {
  name = "ubuntu"
}

resource "docker_image" "ro1" {
  name = "tomcat"
}

resource "docker_image" "ros1" {
  name = "nginx"
}

