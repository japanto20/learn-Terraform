variable "sample" {
  default = "Hello World"
}

output "output" {
  value = var.sample
}

variable "sample1" {}