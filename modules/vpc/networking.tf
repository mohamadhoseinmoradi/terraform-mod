resource "aws_vpc" "main_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"
  tags = {
    Name = "subnet_main"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main_vpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.main.id}"
}