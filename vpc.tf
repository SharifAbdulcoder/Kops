resource "aws_vpc" "khuslenabdul-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "khuslenabdul-com" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "khuslenabdul-com" {
  vpc_id          = "${aws_vpc.khuslenabdul-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.khuslenabdul-com.id}"
}
