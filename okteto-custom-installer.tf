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