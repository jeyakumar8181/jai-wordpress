variable "ami" {
  description = "ID of AMI to use for the instance"
  default = "ami-efa5fe80"
}
variable "instance_type" {
  description = "The type of instance to start"
  default = "t2.micro"
}
variable "key_name" {
  description = "The key name to use for the instance"
  default     = "jai_terraform"
}
variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  default    = "subnet-18008455"
}
variable "security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = "list"
  default = ["sg-74f26f1f"]
}
variable "associate_public_ip_address" {
  description = "Associate a public ip address with an instance in a VPC"
  default     = true
}
variable "tags" {
  description = "A list of tag blocks. Each element should have keys named key, value, and propagate_at_launch."
  default     = "EC2-wordpress"
}
variable "AWS_REGION" {
  default = "ap-south-1"
}

