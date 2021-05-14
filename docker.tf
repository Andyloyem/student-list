# Configure the Docker provider
provider "docker" {
  host = "tcp://127.0.0.1:5000/"
}

# Create a container
resource "docker_container" "api" {
  image = docker_image.student-list_api
  name  = "api"
}

resource "docker_image" "student-list_api" {
  name = "student-list_api"
}
