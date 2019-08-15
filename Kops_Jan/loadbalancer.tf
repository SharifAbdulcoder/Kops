resource "aws_elb" "api-abdugofircluster-com" {
  name = "api-abdugofircluster-com-am9dlm"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-abdugofircluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "abdugofircluster.com"
    Name              = "api.abdugofircluster.com"
  }
}

resource "aws_elb" "bastion-abdugofircluster-com" {
  name = "bastion-abdugofircluster--o8dfvo"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-abdugofircluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "abdugofircluster.com"
    Name              = "bastion.abdugofircluster.com"
  }
}
