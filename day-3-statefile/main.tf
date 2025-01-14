resource "aws_instance" "newtest" {
    ami = "ami-01816d07b1128cd2d"
    instance_type = "t2.micro"
    key_name = "Ec2DevOps"
    tags = {
        Name = "ApplyFromTerraform"
    }
}