resource "aws_route53_record" "api-abdugofircluster-com" {
  name = "api.abdugofircluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-abdugofircluster-com.dns_name}"
    zone_id                = "${aws_elb.api-abdugofircluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1P0V66LEO6LL1"
}

resource "aws_route53_record" "bastion-abdugofircluster-com" {
  name = "bastion.abdugofircluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-abdugofircluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-abdugofircluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1P0V66LEO6LL1"
}

resource "aws_route53_zone_association" "Z1P0V66LEO6LL1" {
  zone_id = "/hostedzone/Z1P0V66LEO6LL1"
  vpc_id  = "${aws_vpc.abdugofircluster-com.id}"
}
