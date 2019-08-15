resource "aws_ebs_volume" "a-etcd-events-abdugofircluster-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "a.etcd-events.abdugofircluster.com"
    "k8s.io/etcd/events"                         = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-abdugofircluster-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "a.etcd-main.abdugofircluster.com"
    "k8s.io/etcd/main"                           = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-abdugofircluster-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "b.etcd-events.abdugofircluster.com"
    "k8s.io/etcd/events"                         = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-abdugofircluster-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "b.etcd-main.abdugofircluster.com"
    "k8s.io/etcd/main"                           = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-abdugofircluster-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "c.etcd-events.abdugofircluster.com"
    "k8s.io/etcd/events"                         = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-abdugofircluster-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "abdugofircluster.com"
    Name                                         = "c.etcd-main.abdugofircluster.com"
    "k8s.io/etcd/main"                           = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/abdugofircluster.com" = "owned"
  }
}
