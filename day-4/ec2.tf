#Create Public Server
resource "aws_instance" "dev" {
  ami                         = "ami-01816d07b1128cd2d"
  instance_type               = "t2.micro"
  key_name                    = "Ec2DevOps"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  tags = {
    Name = "dev_ec2"
  }
}

#Create Private Server
resource "aws_instance" "Dev1P" {
  ami                         = "ami-01816d07b1128cd2d"
  instance_type               = "t2.micro"
  key_name                    = "Ec2DevOps"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  tags = {
    Name = "dev_ec2"
  }
}