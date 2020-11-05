provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "EC2LinuxExample"{
    ami = var.aws_linux_ami
    instance_type = var.instance_type
    availability_zone = var.aws_availability_zone

  tags = {
    Name = "EC2Example"
    owner = var.owner_email
  }
}

resource "aws_ebs_volume" "example"{
    availability_zone = var.aws_availability_zone
    size = 40
}

resource "aws_volume_attachment" "ebs_att"{
    device_name = "/dev/sdh"
    volume_id   = aws_ebs_volume.example.id
    instance_id = aws_instance.EC2LinuxExample.id
}