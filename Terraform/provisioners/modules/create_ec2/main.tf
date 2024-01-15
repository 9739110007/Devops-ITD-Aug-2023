data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ec2_mumbai" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.pem_key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Terraform_Provisioner"
  }
}