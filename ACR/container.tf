resource "docker_container" "t1" {
  name  = "tomcat1"
  image = "tomcat"
  ports {
    internal = 8080
    external = 8082
  }
  command = ["bin/catalina.sh", "run"]
}

resource "docker_container" "nginx" {
  name  = "nginx1"
  image = "nginx"

  ports {
    internal = 80
    external = 8083
  }

  depends_on = [docker_container.t1]
}
