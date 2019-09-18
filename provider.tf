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

provider "aws" {
  region = "us-east-1"
}

terraform = {
  required_version = ">= 0.9.3"
}
