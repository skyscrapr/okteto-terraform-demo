terraform {
  required_providers {
    okteto = {
      source  = "skyscrapr/okteto"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

provider "okteto" {
  namespace = "skyscrapr"
}
