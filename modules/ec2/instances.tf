resource "aws_instance" "sample_instance" {
  count         = var.ec2_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "EC2-${count.index+1}"
  }
} 

resource "aws_security_group" "ec2-sg" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = var.vpc_id
  ingress {
    description = var.sg_desc
    from_port   = var.src_port
    to_port     = var.dst_port
    protocol    = var.protocol
    cidr_blocks = var.sg_cidr_blocks
  }
}