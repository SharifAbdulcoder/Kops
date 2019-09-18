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
