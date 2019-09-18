resource "aws_route_table" "khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "public"
  }
}

resource "aws_route_table" "private-us-east-1a-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1a"
  }
}

resource "aws_route_table" "private-us-east-1b-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1b"
  }
}

resource "aws_route_table" "private-us-east-1c-khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "private-us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-east-1c"
  }
}

resource "aws_route_table_association" "private-us-east-1a-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1a-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "private-us-east-1b-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1b-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "private-us-east-1c-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.us-east-1c-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1a-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1b-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}

resource "aws_route_table_association" "utility-us-east-1c-khuslenabdul-com" {
  subnet_id      = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"
  route_table_id = "${aws_route_table.khuslenabdul-com.id}"
}
