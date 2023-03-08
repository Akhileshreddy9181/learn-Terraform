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