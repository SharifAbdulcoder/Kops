locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-abdugofircluster-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-abdugofircluster-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-abdugofircluster-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-abdugofircluster-com.name}"
  cluster_name                      = "abdugofircluster.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-abdugofircluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-abdugofircluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-abdugofircluster-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-abdugofircluster-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-abdugofircluster-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-abdugofircluster-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-abdugofircluster-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-abdugofircluster-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-abdugofircluster-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-abdugofircluster-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-abdugofircluster-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-abdugofircluster-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-abdugofircluster-com.id}"
  route_table_public_id             = "${aws_route_table.abdugofircluster-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-abdugofircluster-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-abdugofircluster-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"
  vpc_cidr_block                    = "${aws_vpc.abdugofircluster-com.cidr_block}"
  vpc_id                            = "${aws_vpc.abdugofircluster-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-abdugofircluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-abdugofircluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-abdugofircluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-abdugofircluster-com.name}"
}

output "cluster_name" {
  value = "abdugofircluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-abdugofircluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-abdugofircluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-abdugofircluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-abdugofircluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-abdugofircluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-abdugofircluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-abdugofircluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-abdugofircluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-abdugofircluster-com.id}", "${aws_subnet.eu-west-1b-abdugofircluster-com.id}", "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-abdugofircluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-abdugofircluster-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-abdugofircluster-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-abdugofircluster-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-abdugofircluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.abdugofircluster-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-abdugofircluster-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-abdugofircluster-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.abdugofircluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.abdugofircluster-com.id}"
}
