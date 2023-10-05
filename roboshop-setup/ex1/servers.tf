data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["484704032921"]
}


resource "aws_instance" "frontend" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "frontend.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "cart" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "cart.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "catalogue.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "user" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "user.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "shipping" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "shipping.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "payment.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "mongodb.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "mysql" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "mysql.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "redis.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z07168053N2UH00BX82ND"
  name    = "rabbitmq.antodevops20.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

output "rabbitmq" {
  value = "Public IP address  = ${aws_instance.rabbitmq.public_ip}"
}