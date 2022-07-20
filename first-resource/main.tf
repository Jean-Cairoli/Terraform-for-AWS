provider "aws" {
  region = us-west-1
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}
// creating a resource
//run plugin = terraform init next terraform plan => terraform apply

// destroy a resource
//terraform destroy
