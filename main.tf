terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region      = "us-east-1"
  access_key  = "<+pipeline.variables.accesskey>"
  secret_key  = "<+pipeline.variables.secretaccesskey>"
  //access_key  = var.accesskey
  //secret_key  = var.secretaccesskey
}

resource "aws_instance" "harness" {
  instance_type = "t2.micro"
  ami           = "ami-08b5b3a93ed654d19"
  //instance_id   = "<+pipeline.variables.instance_id>"
  //instance_id = var.instance_id
  tags = {
    Name = "harness"
  }
}

//variable "accesskey" {
  //type = string
//}

//variable "secretaccesskey" {
  //type = string
//}

//variable "instance_id" {
  //type = string
//}
