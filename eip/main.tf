provider "aws" {
  region = us-west-1
}

resource "aws_instance" "ec2" {
  ami = "xxxxxxxxxxx3294083490823"
  instance = "t2.micro"
}


resource "aws_eip" "elasticeip" {
  instance = aws_instance.ec2.id
}

output "eip" {
  value = aws_eip.elasticeip.public_ip
}
// creating a resource
//run  = terraform init  => terraform apply