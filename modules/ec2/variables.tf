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

variable "sg_id" {}

variable "common_tags" {
  type = map
  default = {
    Environment = "DEV"
    Application = "MY_APP"
    Account = "Backend-DEV"
  }
}