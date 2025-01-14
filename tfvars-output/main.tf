resource "aws_instance" "localname" {
  ami           = var.amivalue
  instance_type = var.instancetype
  key_name      = var.key
}