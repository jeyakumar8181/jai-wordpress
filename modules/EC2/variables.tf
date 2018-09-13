variable "access_key" {}
variable "secret_key" {}
variable "region" {}

variable "associate_public_ip_address"{
  default="true"
  }
variable "ami" {}
variable "instance_type" {}
variable  "key_name" {} 
variable "ec2_subnet" {}
variable "security_group" {}
variable "vpc_id" {
  default = "vpc-0ef67e6b"
}
