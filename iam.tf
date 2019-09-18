resource "aws_iam_instance_profile" "bastions-khuslenabdul-com" {
  name = "bastions.khuslenabdul.com"
  role = "Admin"
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
