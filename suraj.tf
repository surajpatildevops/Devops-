terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"  # Change as per your requirement
}

resource "aws_instance" "example" {
  ami                    = "ami-0ea630efa6d833c37" # Ubuntu AMI (Update with your region’s AMI)
  instance_type          = "t2.micro"
  key_name               = "suraj-2025-kepair" # Ensure you have created a key pair in AWS
  vpc_security_group_ids = ["sg-019dc85202fe09307"] # Replace with your security group ID
  subnet_id              = "subnet-06abc0a44104871ad" # Replace with your subnet ID
  
  tags = {
    Name = "MyTerraformEC2"
  }
}

