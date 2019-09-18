resource "aws_internet_gateway" "khuslenabdul-com" {
  vpc_id = "${aws_vpc.khuslenabdul-com.id}"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}
