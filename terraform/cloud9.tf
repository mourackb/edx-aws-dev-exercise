resource "aws_cloud9_environment_ec2" "example" {
  instance_type = "t2.micro"
  name          = "edx-env"
  subnet_id     = aws_subnet.subnet.id
}
