variable "profile" {
    description = "AWS credentials profile you want to use"
}

variable "instance_type" {
    description = "AWS instance size type. Ej. t2.micro"
    type = string
}

variable "owner_email" {
    description = "Value of the owner tag for the instances"
    type = string
}

variable "aws_linux_ami" {
    description = "Value for the default linux image you want to use"
    type = string
}

variable "aws_availability_zone" {
    description = "The availability zone to deploy resources too"
    type = string
}