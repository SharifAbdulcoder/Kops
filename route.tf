resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1a-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1a-khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1b-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1b-khuslenabdul-com.id}"
}

resource "aws_route" "private-us-east-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1c-khuslenabdul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1c-khuslenabdul-com.id}"
}
