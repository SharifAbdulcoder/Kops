resource "aws_subnet" "eu-west-1a-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1a.abdugofircluster.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "eu-west-1b-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1b.abdugofircluster.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "eu-west-1c-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1c.abdugofircluster.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "utility-eu-west-1a.abdugofircluster.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "utility-eu-west-1b.abdugofircluster.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-abdugofircluster-com" {
  vpc_id            = "${aws_vpc.abdugofircluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "utility-eu-west-1c.abdugofircluster.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}
