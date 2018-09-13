variable "name"{
  default = "wordpress-ELB"
}
variable "security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = "list"
  default = ["sg-74f26f1f"]
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the ELB"
  type = "list"
  default     = ["subnet-18008455"]
}


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
variable "instance_id" {}




