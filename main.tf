resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = true
}

resource "docker_container" "web" {
  image   = docker_image.nginx.image_id
  name    = var.container_name
  restart = "unless-stopped"

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
