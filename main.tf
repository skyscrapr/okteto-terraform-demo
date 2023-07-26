terraform {
  required_providers {
    okteto = {
      source  = "skyscrapr/okteto"
    }
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "okteto" {
  namespace = "skyscrapr"
}

provider "docker" {
  host = "unix:///Users/richard/.docker/run/docker.sock"
} 