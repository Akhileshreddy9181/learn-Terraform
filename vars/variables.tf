variable "sample"{
  default = 234
}

output "My_Variable_is" {
  value = var.sample
}

variable "sample1" {}

output "var_from_tfvars_file" {
  value = var.sample1
}

#variable "input" {}

variable "sample2"{
  default = "hellooo"
}

variable "sample3" {
  default = [
    "Different",
    true,
    false,
    9875432]
}

variable "sample4" {
  default = {
    Name = "steve"
    Number = 222
    email = "steve222@gmail.com"
  }
}

output "display_steve_info" {
  value = "Variables in Sample2 is : ${var.sample2}, Variables in Sample3 is : ${var.sample3[3]}, Variables in Sample4 is : ${var.sample4["Name"]}"
}