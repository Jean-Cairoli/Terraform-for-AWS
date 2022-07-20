provider "aws" {
  region = us-west-1
}

resource "aws_instance" "ec2" {
  ami = "xxxxxxxxxxx3294083490823"
  instance = "t2.micro"
}

// creating a resource
//run  = terraform init  => terraform apply