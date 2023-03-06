resource "aws_instance" "frontend" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "user" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "user"
  }
}

resource "aws_instance" "redis" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "cart" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "dispatch" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "dispatch"
  }
}
