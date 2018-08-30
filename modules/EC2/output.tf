output "instance_id" {
  value = "${aws_instance.wordpress-jai.id}"
}
output "public_ip"{
value = "${aws_instance.wordpress-jai.public_ip}"
}
