resource "aws_nat_gateway" "us-east-1a-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1a-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1a-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1b-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1b-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-khuslenabdul-com" {
  allocation_id = "${aws_eip.us-east-1c-khuslenabdul-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1c-khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}
