data "aws_ami" "amazonlinux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-2018.*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazonlinux.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet.id

  tags = {
    Name = "Ex4WebServer"
  }
}
