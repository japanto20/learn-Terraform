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

variable "live" {}

output "live" {
  value = var.live
}

variable "input" {}