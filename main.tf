terraform {
  backend "remote" {
    organization = "aws-terraforming"

    workspaces {
      name = "infra"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.28.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-2"
}
