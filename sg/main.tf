provider "aws" {
  region = us-west-1
}

resource "aws_instance" "ec2" {
  ami = "xxxxxxxxxxx3294083490823"
  instance = "t2.micro"
  security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
  name = "Allow HTTPS"
  //traffic in
  ingress {
    from_port = 443
    to_port = 433
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  //traffic out
  egress {
    from_port = 443
    to_port = 433
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}