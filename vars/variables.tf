variable "sample"{
  default = 100
}

output "My_Variable_is" {
  value = var.sample
}

variable "sample1" {}

output "var_from_tfvars_file" {
  value = var.sample1
}

#variable "input" {}

variable "sample3" {
  default = {
    Name = "steve"
    Number = 222
    email = steve222@gmail.com
  }
}

output "display_steve_info" {
  value = var.sample3
}