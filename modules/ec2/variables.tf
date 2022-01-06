variable "ami_id" {}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ec2_count" {
  type = number
  default = "1"
}

variable "subnet_id" {}
