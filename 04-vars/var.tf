variable "sample" {
  default = "Hello World"
}

output "output" {
  value = var.sample
}

variable "sample1"{}

output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}