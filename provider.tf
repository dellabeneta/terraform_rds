terraform {
  //required_version = "1.3.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "michel.dellabeneta"
}