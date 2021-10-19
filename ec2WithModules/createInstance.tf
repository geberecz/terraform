resource "aws_key_pair" "my_ssh_key" {
    key_name   = var.key_name
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}
resource "aws_instance" "web" {
    ami                         = var.ami
    instance_type               = var.instance_type
    associate_public_ip_address = var.associate_public_ip_address
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    key_name                    = aws_key_pair.my_ssh_key.key_name

    tags = {
        Name = var.instanceName
    }

    connection {
        host = coalesce(self.public_ip, self.private_ip)
        type = "ssh"
        user = var.INSTANCE_USERNAME
        private_key = file(var.PATH_TO_PRIVATE_KEY)
    }
}