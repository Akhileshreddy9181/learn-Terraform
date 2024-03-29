data "aws_ami" "ami" {
  most_recent = true
  name_regex = "devops-practice-with-ansible"
  owners = ["self"]
}

data "aws_vpc" "default_vpc" {
  default = true
}

data "aws_security_group" "def_secgrp_id" {

  filter {
    name   = "group-name"
    values = ["allow-all"]
  }

  /*filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }*/

}