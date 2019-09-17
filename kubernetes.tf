locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-khuslenabdul-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-khuslenabdul-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-khuslenabdul-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-khuslenabdul-com.name}"
  cluster_name                      = "khuslenabdul.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-east-1a-masters-khuslenabdul-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-khuslenabdul-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-khuslenabdul-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-khuslenabdul-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-khuslenabdul-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-khuslenabdul-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-east-1a-khuslenabdul-com.id}", "${aws_subnet.us-east-1b-khuslenabdul-com.id}", "${aws_subnet.us-east-1c-khuslenabdul-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-khuslenabdul-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-khuslenabdul-com.name}"
  region                            = "us-east-1"
  route_table_private-us-east-1a_id = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
  route_table_private-us-east-1b_id = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
  route_table_private-us-east-1c_id = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
  route_table_public_id             = "${aws_route_table.khuslenabdul-com.id}"
  subnet_us-east-1a_id              = "${aws_subnet.us-east-1a-khuslenabdul-com.id}"
  subnet_us-east-1b_id              = "${aws_subnet.us-east-1b-khuslenabdul-com.id}"
  subnet_us-east-1c_id              = "${aws_subnet.us-east-1c-khuslenabdul-com.id}"
  subnet_utility-us-east-1a_id      = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"
  subnet_utility-us-east-1b_id      = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"
  subnet_utility-us-east-1c_id      = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"
  vpc_cidr_block                    = "${aws_vpc.khuslenabdul-com.cidr_block}"
  vpc_id                            = "${aws_vpc.khuslenabdul-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-khuslenabdul-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-khuslenabdul-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-khuslenabdul-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-khuslenabdul-com.name}"
}

output "cluster_name" {
  value = "khuslenabdul.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-1a-masters-khuslenabdul-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-khuslenabdul-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-khuslenabdul-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-khuslenabdul-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-khuslenabdul-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-khuslenabdul-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-1a-khuslenabdul-com.id}", "${aws_subnet.us-east-1b-khuslenabdul-com.id}", "${aws_subnet.us-east-1c-khuslenabdul-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-khuslenabdul-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-khuslenabdul-com.name}"
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
}

output "route_table_private-us-east-1b_id" {
  value = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
}

output "route_table_private-us-east-1c_id" {
  value = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.khuslenabdul-com.id}"
}

output "subnet_us-east-1a_id" {
  value = "${aws_subnet.us-east-1a-khuslenabdul-com.id}"
}

output "subnet_us-east-1b_id" {
  value = "${aws_subnet.us-east-1b-khuslenabdul-com.id}"
}

output "subnet_us-east-1c_id" {
  value = "${aws_subnet.us-east-1c-khuslenabdul-com.id}"
}

output "subnet_utility-us-east-1a_id" {
  value = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"
}

output "subnet_utility-us-east-1b_id" {
  value = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"
}

output "subnet_utility-us-east-1c_id" {
  value = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.khuslenabdul-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.khuslenabdul-com.id}"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_autoscaling_attachment" "bastions-khuslenabdul-com" {
  elb                    = "${aws_elb.bastion-khuslenabdul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-khuslenabdul-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-1a-masters-khuslenabdul-com" {
  elb                    = "${aws_elb.api-khuslenabdul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-1a-masters-khuslenabdul-com.id}"
}

resource "aws_autoscaling_group" "bastions-khuslenabdul-com" {
  name                 = "bastions.khuslenabdul.com"
  launch_configuration = "${aws_launch_configuration.bastions-khuslenabdul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}", "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-khuslenabdul-com" {
  name                 = "master-us-east-1a.masters.khuslenabdul.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-1a-masters-khuslenabdul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-1a-khuslenabdul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-1a.masters.khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-khuslenabdul-com" {
  name                 = "nodes.khuslenabdul.com"
  launch_configuration = "${aws_launch_configuration.nodes-khuslenabdul-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.us-east-1a-khuslenabdul-com.id}", "${aws_subnet.us-east-1b-khuslenabdul-com.id}", "${aws_subnet.us-east-1c-khuslenabdul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.khuslenabdul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-khuslenabdul-com" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "a.etcd-events.khuslenabdul.com"
    "k8s.io/etcd/events"                     = "a/a"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-khuslenabdul-com" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "a.etcd-main.khuslenabdul.com"
    "k8s.io/etcd/main"                       = "a/a"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_eip" "us-east-1a-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_eip" "us-east-1b-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_eip" "us-east-1c-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

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

resource "aws_iam_instance_profile" "bastions-khuslenabdul-com" {
  name = "bastions.khuslenabdul.com"
  role = "${aws_iam_role.bastions-khuslenabdul-com.name}"
}

resource "aws_iam_instance_profile" "masters-khuslenabdul-com" {
  name = "masters.khuslenabdul.com"
  role = "${aws_iam_role.masters-khuslenabdul-com.name}"
}

resource "aws_iam_instance_profile" "nodes-khuslenabdul-com" {
  name = "nodes.khuslenabdul.com"
  role = "${aws_iam_role.nodes-khuslenabdul-com.name}"
}

resource "aws_iam_role" "bastions-khuslenabdul-com" {
  name               = "bastions.khuslenabdul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.khuslenabdul.com_policy")}"
}

resource "aws_iam_role" "masters-khuslenabdul-com" {
  name               = "masters.khuslenabdul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.khuslenabdul.com_policy")}"
}

resource "aws_iam_role" "nodes-khuslenabdul-com" {
  name               = "nodes.khuslenabdul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.khuslenabdul.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-khuslenabdul-com" {
  name   = "bastions.khuslenabdul.com"
  role   = "${aws_iam_role.bastions-khuslenabdul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.khuslenabdul.com_policy")}"
}

resource "aws_iam_role_policy" "masters-khuslenabdul-com" {
  name   = "masters.khuslenabdul.com"
  role   = "${aws_iam_role.masters-khuslenabdul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.khuslenabdul.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-khuslenabdul-com" {
  name   = "nodes.khuslenabdul.com"
  role   = "${aws_iam_role.nodes-khuslenabdul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.khuslenabdul.com_policy")}"
}

resource "aws_internet_gateway" "khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-khuslenabdul-com-edacf62a35befec07a89376041e07b4c" {
  key_name   = "kubernetes.khuslenabdul.com-ed:ac:f6:2a:35:be:fe:c0:7a:89:37:60:41:e0:7b:4c"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.khuslenabdul.com-edacf62a35befec07a89376041e07b4c_public_key")}"
}

resource "aws_launch_configuration" "bastions-khuslenabdul-com" {
  name_prefix                 = "bastions.khuslenabdul.com-"
  image_id                    = "ami-0d319deff39629c5e"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-khuslenabdul-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-khuslenabdul-com.id}"
  security_groups             = ["${aws_security_group.bastion-khuslenabdul-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-1a-masters-khuslenabdul-com" {
  name_prefix                 = "master-us-east-1a.masters.khuslenabdul.com-"
  image_id                    = "ami-0d319deff39629c5e"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-khuslenabdul-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-khuslenabdul-com.id}"
  security_groups             = ["${aws_security_group.masters-khuslenabdul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-1a.masters.khuslenabdul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-khuslenabdul-com" {
  name_prefix                 = "nodes.khuslenabdul.com-"
  image_id                    = "ami-0d319deff39629c5e"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-khuslenabdul-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-khuslenabdul-com.id}"
  security_groups             = ["${aws_security_group.nodes-khuslenabdul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.khuslenabdul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "us-east-1a-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1a-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1b-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1c-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1a-khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1b-khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1c-khuslenabdul-com.id}"
}

resource "aws_route53_record" "api-khuslenabdul-com" {
  name = "api.khuslenabdul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-khuslenabdul-com.dns_name}"
    zone_id                = "${aws_elb.api-khuslenabdul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
}

resource "aws_route53_record" "bastion-khuslenabdul-com" {
  name = "bastion.khuslenabdul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-khuslenabdul-com.dns_name}"
    zone_id                = "${aws_elb.bastion-khuslenabdul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
}

resource "aws_route53_zone_association" "Z00866053F3GNCUB8IR0J" {
  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
  vpc_id  = "${aws_vpc.khuslenabdul-com.id}"
}

resource "aws_route_table" "khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "public"
  }
}

resource "aws_route_table" "private-us-east-1a-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1a"
  }
}

resource "aws_route_table" "private-us-east-1b-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1b"
  }
}

resource "aws_route_table" "private-us-east-1c-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1c"
  }
}

resource "aws_route_table_association" "private-us-east-1a-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1a-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "private-us-east-1b-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1b-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "private-us-east-1c-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1c-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1a-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1b-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1c-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}

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

resource "aws_subnet" "us-east-1a-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "us-east-1b-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "us-east-1c-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "utility-us-east-1a-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1a.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-us-east-1b-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1b.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-us-east-1c-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1c.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_vpc" "khuslenabdul-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "khuslenabdul-com" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "khuslenabdul-com" {
  vpc_id          = "${aws_vpc.khuslenabdul-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.khuslenabdul-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
