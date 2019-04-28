resource "aws_launch_configuration" "master-eu-west-1a-masters-abdugofircluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.abdugofircluster.com-"
  image_id                    = "ami-09b955ecb52ae9bcf"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-abdugofircluster-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-abdugofircluster-com.id}"
  security_groups             = ["${aws_security_group.masters-abdugofircluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.abdugofircluster.com_user_data")}"

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

resource "aws_launch_configuration" "master-eu-west-1b-masters-abdugofircluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.abdugofircluster.com-"
  image_id                    = "ami-09b955ecb52ae9bcf"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-abdugofircluster-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-abdugofircluster-com.id}"
  security_groups             = ["${aws_security_group.masters-abdugofircluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.abdugofircluster.com_user_data")}"

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

resource "aws_launch_configuration" "master-eu-west-1c-masters-abdugofircluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.abdugofircluster.com-"
  image_id                    = "ami-09b955ecb52ae9bcf"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-abdugofircluster-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-abdugofircluster-com.id}"
  security_groups             = ["${aws_security_group.masters-abdugofircluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.abdugofircluster.com_user_data")}"

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

resource "aws_launch_configuration" "nodes-abdugofircluster-com" {
  name_prefix                 = "nodes.abdugofircluster.com-"
  image_id                    = "ami-09b955ecb52ae9bcf"
  instance_type               = "${var.node_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-abdugofircluster-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-abdugofircluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-abdugofircluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.abdugofircluster.com_user_data")}"

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

resource "aws_launch_configuration" "bastions-abdugofircluster-com" {
  name_prefix                 = "bastions.abdugofircluster.com-"
  image_id                    = "ami-09b955ecb52ae9bcf"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-abdugofircluster-com-edacf62a35befec07a89376041e07b4c.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-abdugofircluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-abdugofircluster-com.id}"]
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
