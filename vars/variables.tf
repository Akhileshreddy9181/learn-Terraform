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

variable "input" {}