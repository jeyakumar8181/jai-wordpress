provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "ebizon" {
        ami = "${var.ami}"
        instance_type = "${var.instance_type}"
        key_name = "${var.key_name}"
        subnet_id = ["${var.ec2_subnet}"]
        security_groups = ["${var.security_groups}"]
        associate_public_ip_address = "${var.associate_public_ip_address}"
        user_data = "${file("./modules/EC2/wordpress.sh")}"
	
 }
