#Configuraçoes do terraform
terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
      
    }

  }

}

#Configuraçao da aws
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
  #access_key = ""
  #secret_access_key = ""
}


#Cria um bucket do s3 com o nome micheldias-bucket-terraform
resource "aws_s3_bucket" "bucket-1" {
  bucket = "terraform-micheldias-bucket-test"
  acl    = "private"

  tags = {
    Name        = "micheldias-bucket-terraform"
    Environment = "Dev"
    Maintainer  = "Michel Eliabe Moreira Dias"
    Teste       = "Um teste qualquer"
  }
}

#Cria uma instancia do EC2
#resource "aws_instance" "ec2Instance" {
#  ami           = var.aws_instance_ami
#  instance_type = var.aws_instance_type
#
#  tags = var.aws_default_tags
#}