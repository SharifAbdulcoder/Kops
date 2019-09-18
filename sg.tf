resource "aws_security_group" "api-elb-khuslenabdul-com" {
  name        = "api-elb.khuslenabdul.com"
  vpc_id      = "${aws_vpc.khuslenabdul-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "api-elb.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-khuslenabdul-com" {
  name        = "bastion-elb.khuslenabdul.com"
  vpc_id      = "${aws_vpc.khuslenabdul-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "bastion-elb.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_security_group" "bastion-khuslenabdul-com" {
  name        = "bastion.khuslenabdul.com"
  vpc_id      = "${aws_vpc.khuslenabdul-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "bastion.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_security_group" "masters-khuslenabdul-com" {
  name        = "masters.khuslenabdul.com"
  vpc_id      = "${aws_vpc.khuslenabdul-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "masters.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_security_group" "nodes-khuslenabdul-com" {
  name        = "nodes.khuslenabdul.com"
  vpc_id      = "${aws_vpc.khuslenabdul-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "nodes.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.masters-khuslenabdul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.masters-khuslenabdul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-khuslenabdul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-khuslenabdul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-khuslenabdul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-khuslenabdul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-khuslenabdul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-khuslenabdul-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-khuslenabdul-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-khuslenabdul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-khuslenabdul-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-khuslenabdul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-khuslenabdul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-khuslenabdul-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}
