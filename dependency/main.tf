resource "aws_instance" "dependent" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"
  key_name      = "Ec2DevOps"
  user_data     = file("test.sh") #this needs updated as the output is not working
}


resource "aws_s3_bucket" "dependency" {
  bucket     = "deptfvalidate"
  depends_on = [aws_instance.dependent]
}