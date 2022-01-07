
resource "aws_security_group" "ec2_sg" {
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

output "sg_id" {
  value = aws_security_group.ec2_sg.id
}