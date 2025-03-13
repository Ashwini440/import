terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
region = "us-east-1"
aws_access_key = var.accesskey
   secret_access_key = var.secretaccesskey
}
 resource "aws_instance" "harness" {
  # The ID of the EC2 instance that you want to import
   instance_id = var.instance_id
   instance_type = "t2.micro"  
   ami = "ami-08b5b3a93ed654d19"
   
tags = {
    Name = "harness"
}
}
