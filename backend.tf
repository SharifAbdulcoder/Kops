terraform {
  backend "s3" {
    bucket = "abdugofircluster.com"
    key    = "state/abdugofircluster"
    region = "eu-west-1"
  }
}
