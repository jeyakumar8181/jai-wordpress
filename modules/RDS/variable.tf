variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  default = 20
}

variable "storage_type" {
  description = "storage type"
  default     = "gp2"
}
variable "engine"{
  description = "db-engine"
  default = "mysql"
}
variable "engine_version"{
  description = "engine -version"
  default = "5.7.19"
}
variable "instance_class"{
  description = "instance type"
  default = "db.t2.micro"
}
variable "name"{
  description = "db-name"
  default = "jaidb"
}
variable "username"{
  description = "db-username"
  default = "wordpress"
}
variable "password"{
  description = "db-password"
  default = "jaikumar123"
}
variable "parameter_group_name"{
  description = "parameter group name"
  default = "default.mysql5.7"
}
variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = true
}
variable "vpc_id" {
  default = "vpc-2e9cdd47"
}
