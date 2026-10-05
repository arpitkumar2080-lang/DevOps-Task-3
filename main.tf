terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Docker image download karega
resource "docker_image" "my_image" {
  name         = "nginx:latest"
  keep_locally = false
}

# Docker container create karega
resource "docker_container" "my_container" {
  image = docker_image.my_image.image_id
  name  = "task3-container"
  ports {
    internal = 80
    external = 8080
  }
}