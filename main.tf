provider "aws" {
  region = "us-east-1"
}

provider "okteto" {
  namespace = "skyscrapr"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
} 