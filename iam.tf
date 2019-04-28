resource "aws_iam_instance_profile" "bastions-abdugofircluster-com" {
  name = "bastions.abdugofircluster.com"
  role = "${aws_iam_role.bastions-abdugofircluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-abdugofircluster-com" {
  name = "masters.abdugofircluster.com"
  role = "${aws_iam_role.masters-abdugofircluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-abdugofircluster-com" {
  name = "nodes.abdugofircluster.com"
  role = "${aws_iam_role.nodes-abdugofircluster-com.name}"
}

resource "aws_iam_role" "bastions-abdugofircluster-com" {
  name               = "bastions.abdugofircluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.abdugofircluster.com_policy")}"
}

resource "aws_iam_role" "masters-abdugofircluster-com" {
  name               = "masters.abdugofircluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.abdugofircluster.com_policy")}"
}

resource "aws_iam_role" "nodes-abdugofircluster-com" {
  name               = "nodes.abdugofircluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.abdugofircluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-abdugofircluster-com" {
  name   = "bastions.abdugofircluster.com"
  role   = "${aws_iam_role.bastions-abdugofircluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.abdugofircluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-abdugofircluster-com" {
  name   = "masters.abdugofircluster.com"
  role   = "${aws_iam_role.masters-abdugofircluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.abdugofircluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-abdugofircluster-com" {
  name   = "nodes.abdugofircluster.com"
  role   = "${aws_iam_role.nodes-abdugofircluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.abdugofircluster.com_policy")}"
}
