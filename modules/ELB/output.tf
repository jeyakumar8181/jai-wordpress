output "address" {
  value = "${aws_elb.wordpress-elb.dns_name}"
}
