resource "aws_instance" "name" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    key_name = "Ec2DevOps"
    tags = {
        Name = "TFImport"
    }   
}