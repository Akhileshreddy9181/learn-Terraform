resource "aws_spot_instance_request" "load-runner" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.medium"
  wait_for_fulfillment = true
  availability_zone = "us-east-1b"
  vpc_security_group_ids = [data.aws_security_group.def_secgrp_id.id]

  tags = (
    { Name = "practice-sample"}
  )
}

output "default_secgrp_ID" {
  value = data.aws_security_group.def_secgrp_id.id
}