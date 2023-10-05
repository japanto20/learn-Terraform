
resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]

  }

variable "instances"{
  default = ["cart", "catalogue", "user", "payment", "shipping"]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}