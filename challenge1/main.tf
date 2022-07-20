provider "aws" {
  region = us-west-1
}

resource "aws_vpc" "TerraformVPC" {
  cidr_block = "192.168.0.0/24"
}

// creating a resource
//run plugin = terraform init next terraform plan => terraform apply
