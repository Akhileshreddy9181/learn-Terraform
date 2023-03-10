terraform {
  backend "s3" {
    bucket = "devopsa71"
    key    = "s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "test01"
  }
}
