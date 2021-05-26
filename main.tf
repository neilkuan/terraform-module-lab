provider "aws" {
  region = var.region
}

// find amazon linux 2 latest ami id from aws ssm parameter
data "aws_ssm_parameter" "linux_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "example_instance" {
  ami               = data.aws_ssm_parameter.linux_ami.value
  availability_zone = var.instance_az
  instance_type     = var.instance_type
  count             = var.instance_count
  tags = {
    Name = var.server_name
  }
}