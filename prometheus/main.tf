resource "aws_instance" "node1" {
  ami                    = "ami-0e68b80662fefe1c2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]

  tags = {
    Name = prom-test-server
  }
}

resource "aws_instance" "node2" {
  ami                    = "ami-0e68b80662fefe1c2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]

  tags = {
    Name = prom-node-server
  }
}