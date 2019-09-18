resource "aws_ebs_volume" "a-etcd-events-khuslenabdul-com" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "a.etcd-events.khuslenabdul.com"
    "k8s.io/etcd/events"                     = "a/a"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-khuslenabdul-com" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "khuslenabdul.com"
    Name                                     = "a.etcd-main.khuslenabdul.com"
    "k8s.io/etcd/main"                       = "a/a"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/khuslenabdul.com" = "owned"
  }
}
