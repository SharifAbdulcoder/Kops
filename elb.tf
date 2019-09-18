resource "aws_elb" "api-khuslenabdul-com" {
  name = "api-khuslenabdul-com-evcgf2"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-khuslenabdul-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "khuslenabdul.com"
    Name              = "api.khuslenabdul.com"
  }
}

resource "aws_elb" "bastion-khuslenabdul-com" {
  name = "bastion-khuslenabdul-com-fav68s"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-khuslenabdul-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "khuslenabdul.com"
    Name              = "bastion.khuslenabdul.com"
  }
}
