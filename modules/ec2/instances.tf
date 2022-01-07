resource "aws_instance" "sample_instance" {
  count         = var.ec2_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = true

  tags = {
    Name = "EC2-${count.index+1}"
    ENV = var.common_tags["Environment"]
    APP = var.common_tags["Application"]
    Account = var.common_tags["Account"]
  }
}