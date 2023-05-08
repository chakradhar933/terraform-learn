data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

output "ami" {
    value = data.aws_ami.centos.image_id
}


resource "aws_instance" "frontend" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"
  
  tags = {
    Name = "frontend"
  }
}
output "frontend" {
    value = aws_instance.frontend.public_ip
    value = aws_instance.frontend.instance_type
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "frontend-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.public_ip]
}

resource "aws_instance" "mongodb" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "mongodb"
  }
}
output "mongodb" {
    value = aws_instance.mongodb.public_ip
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "mongodb-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.public_ip]
}

resource "aws_instance" "user" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "user-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.user.public_ip]
}

resource "aws_instance" "cart" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "cart-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.public_ip]
}

resource "aws_instance" "catalogue" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "catalogue-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.public_ip]
}

resource "aws_instance" "mysql" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "mysql-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.public_ip]
}

resource "aws_instance" "rabbitmq" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "rabbitmq-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.public_ip]
}



resource "aws_instance" "shipping" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "shipping-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.public_ip]
}

resource "aws_instance" "payment" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "payment-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.public_ip]
}

resource "aws_instance" "dispatch" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "dispatch-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.dispatch.public_ip]
}

resource "aws_instance" "redis" {
  ami                     = data.aws_ami.centos.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0246811XH3HRK0AWHVN"
  name    = "redis-dev.perrie.cloud"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.public_ip]
}