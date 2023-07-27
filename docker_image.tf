resource "docker_image" "okteto-pipeline-installer" {
  name = "okteto-pipeline-installer"
  build {
    context = "."
    tag     = ["okteto-pipeline-installer:1"]
    # build_arg = {
    #   foo : "zoo"
    # }
    label = {
      author : "skyscrapr"
    }
  }
}

# resource "docker_registry_image" "okteto-pipeline-installer" {
#   name          = docker_image.okteto-pipeline-installer.name
#   keep_remotely = false
# }