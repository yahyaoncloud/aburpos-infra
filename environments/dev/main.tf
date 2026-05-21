module "vpc" {

  source = "../../modules/vpc"
}

module "security_group" {

  source = "../../modules/security-group"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {

  source = "../../modules/ec2"

  instance_name = "aburpos-dev-ec2"

  ami_id = "ami-003d053e38837059f"

  instance_type = "t3.micro"

  subnet_id = module.vpc.public_subnet_id

  security_group_ids = [
    module.security_group.security_group_id
  ]

  key_name = "aburpos-key-v3"
}