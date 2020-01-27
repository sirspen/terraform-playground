provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }

  tags = {
    Name = var.ec2_name
  }
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}
