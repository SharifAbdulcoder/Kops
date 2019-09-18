resource "aws_eip" "us-east-1a-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1a.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_eip" "us-east-1b-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1b.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_eip" "us-east-1c-khuslenabdul-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "us-east-1c.khuslenabdul.com"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}
