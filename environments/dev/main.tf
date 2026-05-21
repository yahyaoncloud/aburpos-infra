module "ec2" {

  source = "../../modules/ec2"

  instance_name = "aburpos-dev-ec2"

  ami_id = "ami-xxxxxxxx"

  instance_type = "t2.micro"

  subnet_id = "subnet-xxxxxxxx"

  security_group_ids = [
    "sg-xxxxxxxx"
  ]

  key_name = "aburpos-key"
}