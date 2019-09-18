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
