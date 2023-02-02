resource "aws_security_group" "tf_sg" {
  vpc_id      = var.vpc_id
  name        = var.sg_name
  description = "allows only ${var.sg_name} traffic"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.sg_protocol
    cidr_blocks = var.sg_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "SG-${var.sg_name}"
  }
}