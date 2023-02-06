resource "aws_instance" "tf_instance" {
  count                       = var.num_instances
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id[count.index]
  key_name                    = var.key
  associate_public_ip_address = var.is_pub
  vpc_security_group_ids      = var.sg_ids
  user_data                   = file(var.path)

  tags = {
    "Name" = "TF-${var.ec2_name}-${count.index}"
  }

}
