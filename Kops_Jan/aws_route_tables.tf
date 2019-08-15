resource "aws_route_table" "abdugofircluster-com" {
  vpc_id = "${aws_vpc.abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/kops/role"                    = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-abdugofircluster-com" {
  vpc_id = "${aws_vpc.abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "private-eu-west-1a.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-abdugofircluster-com" {
  vpc_id = "${aws_vpc.abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "private-eu-west-1b.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-abdugofircluster-com" {
  vpc_id = "${aws_vpc.abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "private-eu-west-1c.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-abdugofircluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-abdugofircluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-abdugofircluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.abdugofircluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.abdugofircluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-abdugofircluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"
  route_table_id = "${aws_route_table.abdugofircluster-com.id}"
}
