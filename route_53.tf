resource "aws_route53_record" "api-khuslenabdul-com" {
  name = "api.khuslenabdul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-khuslenabdul-com.dns_name}"
    zone_id                = "${aws_elb.api-khuslenabdul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
}

resource "aws_route53_record" "bastion-khuslenabdul-com" {
  name = "bastion.khuslenabdul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-khuslenabdul-com.dns_name}"
    zone_id                = "${aws_elb.bastion-khuslenabdul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
}

resource "aws_route53_zone_association" "Z00866053F3GNCUB8IR0J" {
  zone_id = "/hostedzone/Z00866053F3GNCUB8IR0J"
  vpc_id  = "${aws_vpc.khuslenabdul-com.id}"
}
