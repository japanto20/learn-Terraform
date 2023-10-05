
resource "aws_instance" "instances" {
  for_each = var.instances
  ami                    = "ami-03265a0778a880afb"
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name =  each.value["name"]

  }

}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}