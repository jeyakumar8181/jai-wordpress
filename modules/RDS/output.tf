output "endpoint" {
        description = "This is connection endpoints"
        value = "${aws_db_instance.wordpress_db.endpoint}"
}
