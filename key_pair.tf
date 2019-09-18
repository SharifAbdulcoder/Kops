resource "aws_key_pair" "kubernetes-khuslenabdul-com-edacf62a35befec07a89376041e07b4c" {
  key_name   = "kubernetes.khuslenabdul.com-ed:ac:f6:2a:35:be:fe:c0:7a:89:37:60:41:e0:7b:4c"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.khuslenabdul.com-edacf62a35befec07a89376041e07b4c_public_key")}"
}
