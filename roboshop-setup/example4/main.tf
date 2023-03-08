module "ec2" {
  for_each = var.instances_info
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
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
