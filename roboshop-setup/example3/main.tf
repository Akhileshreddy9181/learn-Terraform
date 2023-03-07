data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

variable "instances_info" {
  default = {
    catalogue ={
      name= "catalogue"
      type="t3.micro"
    }
    cart ={
      name= "cart"
      type="t3.small"
    }
    user ={
      name= "user"
      type="t3.micro"
    }
  }
}

resource "aws_instance" "ec2" {
  for_each               = var.instances_info
  ami                    = data.aws_ami.ami.image_id
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = each.value["name"]
  }

}