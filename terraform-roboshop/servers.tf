data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

output "ami" {
    value = data.aws_ami.centos.image_id
}


resource "aws_instance" "frontend-01" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"
  
  tags = {
    Name = "frontend-01"
  }
}


resource "aws_instance" "mongodb-02" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "mongodb-02"
  }
}

resource "aws_instance" "user-03" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "user-03"
  }
}

resource "aws_instance" "cart-04" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "cart-04"
  }
}

resource "aws_instance" "catalogue-05" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "catalogue-05"
  }
}

resource "aws_instance" "mysql-06" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "mysql-06"
  }
}

resource "aws_instance" "rabbitmq-07" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "rabbitmq-07"
  }
}

resource "aws_instance" "shipping-08" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "shipping-08"
  }
}

resource "aws_instance" "payment-09" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "payment-09"
  }
}

resource "aws_instance" "dispatch-10" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "dispatch-10"
  }
}

resource "aws_instance" "redis-11" {
  ami                     = "ami-0b5a2b5b8f2be4ec2"
  instance_type           = "t2.micro"

  tags = {
    Name = "redis-11"
  }
}