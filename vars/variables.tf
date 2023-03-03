variable "sample"{
  default = "Hello World"
}

output "My_Variable_is" {
  value = var.sample
}