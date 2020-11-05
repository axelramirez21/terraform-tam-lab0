output "EC2LinuxExample_private_ip" {
    value = aws_instance.EC2LinuxExample.private_ip
}

output "EC2LinuxExample_AvailabilityZone" {
    value = aws_instance.EC2LinuxExample.availability_zone
}

output "EC2LinuxExample_ARN" {
    value = aws_instance.EC2LinuxExample.arn
}

output "EC2LinuxExample_id" {
    value = aws_instance.EC2LinuxExample.id
}