resource "aws_eip" "eu-west-1a-abdugofircluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1a.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-abdugofircluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1b.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-abdugofircluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "eu-west-1c.abdugofircluster.com"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}
