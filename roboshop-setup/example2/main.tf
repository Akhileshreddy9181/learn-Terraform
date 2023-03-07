data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}


resource "aws_instance" "ec2" {
  count                  = length(var.name_of_instances)
  ami                    = data.aws_ami.ami.image_id
  instance_type          = var.type_of_instances[count.index]
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = var.name_of_instances[count.index]
  }

}

variable "name_of_instances" {
  default = ["frontend", "catalogue"]
}

variable "type_of_instances" {
  default = ["t3.micro", "t3.small"]
}
