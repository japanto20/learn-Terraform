data "aws_ami" "anto" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["484704032921"]
}

output "ami_id" {
  value = data.aws_ami.anto.image_id
}