variable "name"{
  default = "wordpress-ELB"
}
variable "vpc_id" {
  default = "vpc-0ef67e6b"
}
variable "elb_subnet" {}
variable "instance_id" {}
variable "cross_zone_load_balancing" {
  description = "Enable cross-zone load balancing"
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle"
  default     = 400
}

variable "connection_draining" {
  description = "Boolean to enable connection draining"
  default     = true
}

variable "connection_draining_timeout" {
  description = "The time in seconds to allow for connections to drain"
  default     = 300
}



