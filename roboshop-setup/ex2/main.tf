data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["484704032921"]
}


resource "aws_instance" "frontend" {
  count = 5
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]

  }
}
