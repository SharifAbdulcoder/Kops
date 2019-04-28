resource "aws_internet_gateway" "abdugofircluster-com" {
  vpc_id = "${aws_vpc.abdugofircluster-com.id}"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}
