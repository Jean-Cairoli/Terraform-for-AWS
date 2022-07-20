provider "aws" {
  region = us-west-1
}

variable "ingressrules" {
  type = list(number)
  default = [80,443]
}

variable "engressrules" {
  type = list(number)
  default = [80,443, 25, 3306, 53,8080]
}

resource "aws_instance" "ec2" {
  ami = "ami-032598fcc7e9d1c7a"
  instance = "t2.micro"
  security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
  name = "Allow HTTPS"
  //traffic in
  dynamic "ingress" {
    iterator = ports
    for_each = var.ingressrules
    container {
    from_port = port.value
    to_port = port.value
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    }
  }

  //traffic out
  dynamic "engress" {
    iterator = ports
    for_each = var.engressrules
    container {
    from_port = port.value
    to_port = port.value
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    }
  }
}