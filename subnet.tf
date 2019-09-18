resource "aws_subnet" "us-east-1a-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "us-east-1b-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "us-east-1c-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "utility-us-east-1a-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1a.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-us-east-1b-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1b.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-us-east-1c-khuslenabdul-com" {
  vpc_id            = "${aws_vpc.khuslenabdul-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "utility-us-east-1c.khuslenabdul.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}
