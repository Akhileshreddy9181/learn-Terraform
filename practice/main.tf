resource "aws_spot_instance_request" "load-runner" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.medium"
  wait_for_fulfillment = true
  vpc_security_group_ids = ["sg-014027faf21cd7f8e"]

  tags = (
    { Name = "practice-sample"}
  )
}

output "default_secgrp_ID" {

  value = data.aws_security_group.def_secgrp_id
}