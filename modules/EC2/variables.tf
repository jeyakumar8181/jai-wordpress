variable "access_key" {}
variable "secret_key" {}
variable "region" {}

variable "associate_public_ip_address"{
  default="true"
  }
variable "ami" {}
variable "instance_type" {
  description = "The type of instance to start"
  default = "t2.micro"
}
variable "key_name" {
  description = "The key name to use for the instance"
  default     = "jaiebizon"
}
variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  default    = "subnet-43fa8d26"
}
variable "security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = "list"
  default = ["sg-036fc7c1850d60236"]
  }
