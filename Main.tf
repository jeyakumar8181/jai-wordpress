provider "aws" {
	region = "ap-south-1"
}
module "RDS" {
        source = "./modules/RDS"
}

module "EC2" {
        source = "./modules/EC2"
}

module "ELB" {
        source = "./modules/ELB"
		instance_id = "${module.EC2.instance_id}"
}
