# EC2 variables
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

# SG variables
variable "sg_name" {
  type = string
  default = "sg_terraform"
}
variable "sg_desc" {
    type = string
    default = "sg_created_by_terraform"
}
variable "vpc_id" {}
variable "src_port" {}
variable "dst_port" {}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "sg_cidr_blocks" {
  default = ["0.0.0.0/0"]
}
