locals = {
  cluster_name                      = "hiyorisolutions.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-2a-masters-hiyorisolutions-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-hiyorisolutions-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-hiyorisolutions-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-hiyorisolutions-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-hiyorisolutions-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-hiyorisolutions-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-hiyorisolutions-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-hiyorisolutions-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-2a-hiyorisolutions-com.id}", "${aws_subnet.us-west-2b-hiyorisolutions-com.id}", "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-hiyorisolutions-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-hiyorisolutions-com.name}"
  region                            = "us-west-2"
  route_table_private-us-west-2a_id = "${aws_route_table.private-us-west-2a-hiyorisolutions-com.id}"
  route_table_private-us-west-2b_id = "${aws_route_table.private-us-west-2b-hiyorisolutions-com.id}"
  route_table_private-us-west-2c_id = "${aws_route_table.private-us-west-2c-hiyorisolutions-com.id}"
  route_table_public_id             = "${aws_route_table.hiyorisolutions-com.id}"
  subnet_us-west-2a_id              = "${aws_subnet.us-west-2a-hiyorisolutions-com.id}"
  subnet_us-west-2b_id              = "${aws_subnet.us-west-2b-hiyorisolutions-com.id}"
  subnet_us-west-2c_id              = "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"
  subnet_utility-us-west-2a_id      = "${aws_subnet.utility-us-west-2a-hiyorisolutions-com.id}"
  subnet_utility-us-west-2b_id      = "${aws_subnet.utility-us-west-2b-hiyorisolutions-com.id}"
  subnet_utility-us-west-2c_id      = "${aws_subnet.utility-us-west-2c-hiyorisolutions-com.id}"
  vpc_cidr_block                    = "${aws_vpc.hiyorisolutions-com.cidr_block}"
  vpc_id                            = "${aws_vpc.hiyorisolutions-com.id}"
}

output "cluster_name" {
  value = "hiyorisolutions.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-2a-masters-hiyorisolutions-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-hiyorisolutions-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-hiyorisolutions-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-hiyorisolutions-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-hiyorisolutions-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-hiyorisolutions-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-hiyorisolutions-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-hiyorisolutions-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-2a-hiyorisolutions-com.id}", "${aws_subnet.us-west-2b-hiyorisolutions-com.id}", "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-hiyorisolutions-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-hiyorisolutions-com.name}"
}

output "region" {
  value = "us-west-2"
}

output "route_table_private-us-west-2a_id" {
  value = "${aws_route_table.private-us-west-2a-hiyorisolutions-com.id}"
}

output "route_table_private-us-west-2b_id" {
  value = "${aws_route_table.private-us-west-2b-hiyorisolutions-com.id}"
}

output "route_table_private-us-west-2c_id" {
  value = "${aws_route_table.private-us-west-2c-hiyorisolutions-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.hiyorisolutions-com.id}"
}

output "subnet_us-west-2a_id" {
  value = "${aws_subnet.us-west-2a-hiyorisolutions-com.id}"
}

output "subnet_us-west-2b_id" {
  value = "${aws_subnet.us-west-2b-hiyorisolutions-com.id}"
}

output "subnet_us-west-2c_id" {
  value = "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"
}

output "subnet_utility-us-west-2a_id" {
  value = "${aws_subnet.utility-us-west-2a-hiyorisolutions-com.id}"
}

output "subnet_utility-us-west-2b_id" {
  value = "${aws_subnet.utility-us-west-2b-hiyorisolutions-com.id}"
}

output "subnet_utility-us-west-2c_id" {
  value = "${aws_subnet.utility-us-west-2c-hiyorisolutions-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.hiyorisolutions-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.hiyorisolutions-com.id}"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-hiyorisolutions-com" {
  elb                    = "${aws_elb.api-hiyorisolutions-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-hiyorisolutions-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-hiyorisolutions-com" {
  elb                    = "${aws_elb.api-hiyorisolutions-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-hiyorisolutions-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-hiyorisolutions-com" {
  elb                    = "${aws_elb.api-hiyorisolutions-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-hiyorisolutions-com.id}"
}

resource "aws_autoscaling_group" "master-us-west-2a-masters-hiyorisolutions-com" {
  name                 = "master-us-west-2a.masters.hiyorisolutions.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2a-masters-hiyorisolutions-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-hiyorisolutions-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2a.masters.hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2a"
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

resource "aws_autoscaling_group" "master-us-west-2b-masters-hiyorisolutions-com" {
  name                 = "master-us-west-2b.masters.hiyorisolutions.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2b-masters-hiyorisolutions-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2b-hiyorisolutions-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2b.masters.hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2b"
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

resource "aws_autoscaling_group" "master-us-west-2c-masters-hiyorisolutions-com" {
  name                 = "master-us-west-2c.masters.hiyorisolutions.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2c-masters-hiyorisolutions-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2c-hiyorisolutions-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2c.masters.hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2c"
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

resource "aws_autoscaling_group" "nodes-hiyorisolutions-com" {
  name                 = "nodes.hiyorisolutions.com"
  launch_configuration = "${aws_launch_configuration.nodes-hiyorisolutions-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-hiyorisolutions-com.id}", "${aws_subnet.us-west-2b-hiyorisolutions-com.id}", "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "hiyorisolutions.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.hiyorisolutions.com"
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

resource "aws_ebs_volume" "a-etcd-events-hiyorisolutions-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "a.etcd-events.hiyorisolutions.com"
    "k8s.io/etcd/events"                        = "a/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-hiyorisolutions-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "a.etcd-main.hiyorisolutions.com"
    "k8s.io/etcd/main"                          = "a/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-hiyorisolutions-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "b.etcd-events.hiyorisolutions.com"
    "k8s.io/etcd/events"                        = "b/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-hiyorisolutions-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "b.etcd-main.hiyorisolutions.com"
    "k8s.io/etcd/main"                          = "b/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-hiyorisolutions-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "c.etcd-events.hiyorisolutions.com"
    "k8s.io/etcd/events"                        = "c/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-hiyorisolutions-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "c.etcd-main.hiyorisolutions.com"
    "k8s.io/etcd/main"                          = "c/a,b,c"
    "k8s.io/role/master"                        = "1"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_eip" "us-west-2a-hiyorisolutions-com" {
  vpc = true

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2a.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_eip" "us-west-2b-hiyorisolutions-com" {
  vpc = true

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2b.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_eip" "us-west-2c-hiyorisolutions-com" {
  vpc = true

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2c.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_elb" "api-hiyorisolutions-com" {
  name = "api-hiyorisolutions-com-35qc4f"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-hiyorisolutions-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-hiyorisolutions-com.id}", "${aws_subnet.utility-us-west-2b-hiyorisolutions-com.id}", "${aws_subnet.utility-us-west-2c-hiyorisolutions-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "api.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-hiyorisolutions-com" {
  name = "masters.hiyorisolutions.com"
  role = "${aws_iam_role.masters-hiyorisolutions-com.name}"
}

resource "aws_iam_instance_profile" "nodes-hiyorisolutions-com" {
  name = "nodes.hiyorisolutions.com"
  role = "${aws_iam_role.nodes-hiyorisolutions-com.name}"
}

resource "aws_iam_role" "masters-hiyorisolutions-com" {
  name               = "masters.hiyorisolutions.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.hiyorisolutions.com_policy")}"
}

resource "aws_iam_role" "nodes-hiyorisolutions-com" {
  name               = "nodes.hiyorisolutions.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.hiyorisolutions.com_policy")}"
}

resource "aws_iam_role_policy" "masters-hiyorisolutions-com" {
  name   = "masters.hiyorisolutions.com"
  role   = "${aws_iam_role.masters-hiyorisolutions-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.hiyorisolutions.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-hiyorisolutions-com" {
  name   = "nodes.hiyorisolutions.com"
  role   = "${aws_iam_role.nodes-hiyorisolutions-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.hiyorisolutions.com_policy")}"
}

resource "aws_internet_gateway" "hiyorisolutions-com" {
  vpc_id = "${aws_vpc.hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-hiyorisolutions-com-34fa392436012927a1930d76713f2df3" {
  key_name   = "kubernetes.hiyorisolutions.com-34:fa:39:24:36:01:29:27:a1:93:0d:76:71:3f:2d:f3"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.hiyorisolutions.com-34fa392436012927a1930d76713f2df3_public_key")}"
}

resource "aws_launch_configuration" "master-us-west-2a-masters-hiyorisolutions-com" {
  name_prefix                 = "master-us-west-2a.masters.hiyorisolutions.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-hiyorisolutions-com-34fa392436012927a1930d76713f2df3.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-hiyorisolutions-com.id}"
  security_groups             = ["${aws_security_group.masters-hiyorisolutions-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2a.masters.hiyorisolutions.com_user_data")}"

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

resource "aws_launch_configuration" "master-us-west-2b-masters-hiyorisolutions-com" {
  name_prefix                 = "master-us-west-2b.masters.hiyorisolutions.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-hiyorisolutions-com-34fa392436012927a1930d76713f2df3.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-hiyorisolutions-com.id}"
  security_groups             = ["${aws_security_group.masters-hiyorisolutions-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2b.masters.hiyorisolutions.com_user_data")}"

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

resource "aws_launch_configuration" "master-us-west-2c-masters-hiyorisolutions-com" {
  name_prefix                 = "master-us-west-2c.masters.hiyorisolutions.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-hiyorisolutions-com-34fa392436012927a1930d76713f2df3.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-hiyorisolutions-com.id}"
  security_groups             = ["${aws_security_group.masters-hiyorisolutions-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2c.masters.hiyorisolutions.com_user_data")}"

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

resource "aws_launch_configuration" "nodes-hiyorisolutions-com" {
  name_prefix                 = "nodes.hiyorisolutions.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-hiyorisolutions-com-34fa392436012927a1930d76713f2df3.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-hiyorisolutions-com.id}"
  security_groups             = ["${aws_security_group.nodes-hiyorisolutions-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.hiyorisolutions.com_user_data")}"

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

resource "aws_nat_gateway" "us-west-2a-hiyorisolutions-com" {
  allocation_id = "${aws_eip.us-west-2a-hiyorisolutions-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2a-hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2a.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2b-hiyorisolutions-com" {
  allocation_id = "${aws_eip.us-west-2b-hiyorisolutions-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2b-hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2b.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2c-hiyorisolutions-com" {
  allocation_id = "${aws_eip.us-west-2c-hiyorisolutions-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2c-hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2c.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.hiyorisolutions-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.hiyorisolutions-com.id}"
}

resource "aws_route" "private-us-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2a-hiyorisolutions-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2a-hiyorisolutions-com.id}"
}

resource "aws_route" "private-us-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2b-hiyorisolutions-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2b-hiyorisolutions-com.id}"
}

resource "aws_route" "private-us-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2c-hiyorisolutions-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2c-hiyorisolutions-com.id}"
}

resource "aws_route53_record" "api-hiyorisolutions-com" {
  name = "api.hiyorisolutions.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-hiyorisolutions-com.dns_name}"
    zone_id                = "${aws_elb.api-hiyorisolutions-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3T3L9JFWK7V0J"
}

resource "aws_route53_zone_association" "Z3T3L9JFWK7V0J" {
  zone_id = "/hostedzone/Z3T3L9JFWK7V0J"
  vpc_id  = "${aws_vpc.hiyorisolutions-com.id}"
}

resource "aws_route_table" "hiyorisolutions-com" {
  vpc_id = "${aws_vpc.hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/kops/role"                   = "public"
  }
}

resource "aws_route_table" "private-us-west-2a-hiyorisolutions-com" {
  vpc_id = "${aws_vpc.hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "private-us-west-2a.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/kops/role"                   = "private-us-west-2a"
  }
}

resource "aws_route_table" "private-us-west-2b-hiyorisolutions-com" {
  vpc_id = "${aws_vpc.hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "private-us-west-2b.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/kops/role"                   = "private-us-west-2b"
  }
}

resource "aws_route_table" "private-us-west-2c-hiyorisolutions-com" {
  vpc_id = "${aws_vpc.hiyorisolutions-com.id}"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "private-us-west-2c.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/kops/role"                   = "private-us-west-2c"
  }
}

resource "aws_route_table_association" "private-us-west-2a-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.us-west-2a-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2a-hiyorisolutions-com.id}"
}

resource "aws_route_table_association" "private-us-west-2b-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.us-west-2b-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2b-hiyorisolutions-com.id}"
}

resource "aws_route_table_association" "private-us-west-2c-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.us-west-2c-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2c-hiyorisolutions-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2a-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2a-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.hiyorisolutions-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2b-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2b-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.hiyorisolutions-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2c-hiyorisolutions-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2c-hiyorisolutions-com.id}"
  route_table_id = "${aws_route_table.hiyorisolutions-com.id}"
}

resource "aws_security_group" "api-elb-hiyorisolutions-com" {
  name        = "api-elb.hiyorisolutions.com"
  vpc_id      = "${aws_vpc.hiyorisolutions-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "api-elb.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_security_group" "masters-hiyorisolutions-com" {
  name        = "masters.hiyorisolutions.com"
  vpc_id      = "${aws_vpc.hiyorisolutions-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "masters.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_security_group" "nodes-hiyorisolutions-com" {
  name        = "nodes.hiyorisolutions.com"
  vpc_id      = "${aws_vpc.hiyorisolutions-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "nodes.hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.masters-hiyorisolutions-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.masters-hiyorisolutions-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-hiyorisolutions-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-hiyorisolutions-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-hiyorisolutions-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-hiyorisolutions-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-hiyorisolutions-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-hiyorisolutions-com.id}"
  source_security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-hiyorisolutions-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-hiyorisolutions-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-west-2a-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2a.hiyorisolutions.com"
    SubnetType                                  = "Private"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}

resource "aws_subnet" "us-west-2b-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2b.hiyorisolutions.com"
    SubnetType                                  = "Private"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}

resource "aws_subnet" "us-west-2c-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "us-west-2c.hiyorisolutions.com"
    SubnetType                                  = "Private"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}

resource "aws_subnet" "utility-us-west-2a-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "utility-us-west-2a.hiyorisolutions.com"
    SubnetType                                  = "Utility"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_subnet" "utility-us-west-2b-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "utility-us-west-2b.hiyorisolutions.com"
    SubnetType                                  = "Utility"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_subnet" "utility-us-west-2c-hiyorisolutions-com" {
  vpc_id            = "${aws_vpc.hiyorisolutions-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "utility-us-west-2c.hiyorisolutions.com"
    SubnetType                                  = "Utility"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_vpc" "hiyorisolutions-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "hiyorisolutions-com" {
  domain_name         = "us-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                           = "hiyorisolutions.com"
    Name                                        = "hiyorisolutions.com"
    "kubernetes.io/cluster/hiyorisolutions.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "hiyorisolutions-com" {
  vpc_id          = "${aws_vpc.hiyorisolutions-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.hiyorisolutions-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
