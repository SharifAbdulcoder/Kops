resource "aws_vpc" "abdugofircluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "abdugofircluster-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "abdugofircluster-com" {
  vpc_id          = "${aws_vpc.abdugofircluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.abdugofircluster-com.id}"
}
