resource "aws_db_instance" "wordpress_db" {
  allocated_storage    = "${var.allocated_storage}"
  storage_type         = "${var.storage_type}"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.instance_class}"
  db_subnet_group_name = "${aws_db_subnet_group.rds-subnet.name}"
  vpc_security_group_ids      = ["${aws_security_group.rds-wordpress-sg.id}"]
  name                 = "${var.name}"
  username             = "${var.username}"
  password             = "${var.password}"
  parameter_group_name = "${var.parameter_group_name}"
  multi_az = "${var.multi_az}"
}
resource "aws_security_group" "rds-wordpress-sg" {
  vpc_id      = "${var.vpc_id}"
  name        = "wordpress-sg-rds"
  description = "RDS security group "

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    name         = "wordpress_rds"
  }
  }
resource "aws_db_subnet_group" "rds-subnet" {
  name       = "rdssubnet"
  subnet_ids = ["subnet-18008455", "subnet-f356b59b"]

  tags {
    name = "wordpress-rds"
  }
}
