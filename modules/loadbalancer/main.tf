resource "aws_lb" "tf_load" {
  name               = "tf-${var.lb_name}"
  internal           = false
  ip_address_type    = "ipv4"
  load_balancer_type = "application"
  security_groups    = var.load_sgs
  subnets            = var.subnets

  tags = {
    "Name" = "TF-${var.lb_name}"
  }
}

resource "aws_lb_target_group" "tf_load_target" {
  name        = "tf_${var.lb_name}_targetgroup"
  port        = var.target_group_port
  protocol    = var.lb_protocol
  vpc_id      = var.vpc_id
  target_type = "instance"


  health_check {
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 30
    matcher             = 200
    protocol            = "HTTP"
    path                = "/index.html"
  }
}

resource "aws_lb_target_group_attachment" "ec2_attach" {
  count            = length(var.instance_id)
  target_group_arn = aws_lb_target_group.tf_load_target.arn
  target_id        = var.instance_id[count.index]
}

resource "aws_lb_listener" "tf_listener" {
  load_balancer_arn = aws_lb.tf_load.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tf_load_target.arn
  }
}