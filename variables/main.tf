provider "aws" {
  region = us-west-1
}

variable "vpcname" {
  type = "string"
  default = "myyvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
  # default = false
}

variable "myList" {
  type = list(string)
  default = ["value1", "value2", "value3"]
  // based on 0 
}

variable "mymap" {
  type = map
  default = {
    Key1: "value1",
    Key2: "value2",
  }
}

variable "inputname" {
  typr = string
  description = "Set the name of the VPC"
}

output "vpcid" {
  value = aws_vpc.myvpc.id
}


resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputname
  }
  # tags = {
  #   Name = var.vpcname
  #   string interpellation
  #    Name = "${var.vpcname}"
  # }

  #  tags = {
  #   Name = var.mylist[0]  = "value1"
  #   Name = var.mylist[1]  = "value2"
  # }

  # tags = {
  #   Name = var.mymap["Key2"] = "value2"
  # }
}

output "vpcid" {
  value = aws_vpc.myvpc.id
}

variable "mytuple" {
  type = tuple([string, number, string])
  default = ["cat", 1, "dog"]
}

variable "myobject" {
  type = object({name = string, port = list(number)})
  default = {
    name = "JC"
    port = [22, 25, 80]
  }
}