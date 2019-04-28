resource "aws_autoscaling_attachment" "bastions-abdugofircluster-com" {
  elb                    = "${aws_elb.bastion-abdugofircluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-abdugofircluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-abdugofircluster-com" {
  elb                    = "${aws_elb.api-abdugofircluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-abdugofircluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-abdugofircluster-com" {
  elb                    = "${aws_elb.api-abdugofircluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-abdugofircluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-abdugofircluster-com" {
  elb                    = "${aws_elb.api-abdugofircluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-abdugofircluster-com.id}"
}

resource "aws_autoscaling_group" "bastions-abdugofircluster-com" {
  name                 = "bastions.abdugofircluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-abdugofircluster-com.id}"
  max_size             = "${var.bastion_max_size}"
  min_size             = "${var.bastion_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.abdugofircluster.com"
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

resource "aws_autoscaling_group" "master-eu-west-1a-masters-abdugofircluster-com" {
  name                 = "master-eu-west-1a.masters.abdugofircluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-abdugofircluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-abdugofircluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
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

resource "aws_autoscaling_group" "master-eu-west-1b-masters-abdugofircluster-com" {
  name                 = "master-eu-west-1b.masters.abdugofircluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-abdugofircluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-abdugofircluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
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

resource "aws_autoscaling_group" "master-eu-west-1c-masters-abdugofircluster-com" {
  name                 = "master-eu-west-1c.masters.abdugofircluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-abdugofircluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-abdugofircluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
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

resource "aws_autoscaling_group" "nodes-abdugofircluster-com" {
  name                 = "nodes.abdugofircluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-abdugofircluster-com.id}"
  max_size             = "${var.node_max_size}"
  min_size             = "${var.node_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "abdugofircluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.abdugofircluster.com"
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
