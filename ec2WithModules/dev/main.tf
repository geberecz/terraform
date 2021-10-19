module "dev_instance" {
  source = "../../ec2WithModules"

  instanceName                = "first-instance"
  ami                         = "ami-05792b2160fe85a8a"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id                   = "subnet-1bc30450"
  vpc_security_group_ids      = ["sg-0b8d5b22","sg-06a94d3b5ce85b439"]
  key_name                    = "gb-ssh-key"
  PATH_TO_PRIVATE_KEY         = "dev-ssh-key"
  PATH_TO_PUBLIC_KEY          = "dev-ssh-key.pub"
  INSTANCE_USERNAME           = "ubuntu"

}