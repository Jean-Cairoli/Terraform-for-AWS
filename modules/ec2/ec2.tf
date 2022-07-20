variable "ec2name" {
  type = string
}

resource "aws_instance" "ec2" {
  ami = "xxxxxxxxxxx3294083490823"
  instance = "t2.micro"
  tags = {
    Name = var.ec2name
  }
}

output "instance_id" {
  value = module.ec2module.instance_id
}