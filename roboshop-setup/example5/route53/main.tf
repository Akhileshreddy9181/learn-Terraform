resource "aws_route53_record" "record" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "${var.component}-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}