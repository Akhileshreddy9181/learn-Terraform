resource "aws_instance" "frontend" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "frontend-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "catalogue-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "mongodb-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "user" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "user-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "redis" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "redis-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "cart" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "cart-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "mysql-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "shipping-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "rabbitmq-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "payment-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-006c61c287cf5f4d5"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z00402221E1TOA6JZJNT9"
  name    = "dispatch-dev.devopsa.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.dispatch.private_ip]
}
