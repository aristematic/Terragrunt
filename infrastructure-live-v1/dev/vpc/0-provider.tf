provider "aws" {
    region = "us-east-1"
}

terraform {
  required_version = ">=1.0"

  backend "local" {
    path = "dev/vpc/terraform.tfstate"
 }

 required_providers {
   aws = {
    source = "hashicrop/aws"
    version = "~> 4.62"
   }
 }
}
