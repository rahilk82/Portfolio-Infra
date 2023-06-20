module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.1.0"

  name = "resume-prod"

  instance_type          = "t2.micro"
  ami                    = "ami-01dd271720c1ba44f"
  key_name               = "portfolio"
  monitoring             = true
  vpc_security_group_ids = ["sg-0df96aebff29762cf"]
  subnet_id              = "subnet-0127889585b2c7c55"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}