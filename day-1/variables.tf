variable "ami_id" {
    description = "inserting ami value to maint.tf"
    type = string
    default = "ami-01816d07b1128cd2d"
  
}
variable "type" {
    type = string
    default = "t2.micro"
  
}
variable "keyname" {
    type = string
    default = "Ec2DevOps"
  
}