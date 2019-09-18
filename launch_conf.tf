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
