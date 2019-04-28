resource "aws_nat_gateway" "eu-west-1a-abdugofircluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-abdugofircluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1a.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-abdugofircluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-abdugofircluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1b.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-abdugofircluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-abdugofircluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1c.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}
