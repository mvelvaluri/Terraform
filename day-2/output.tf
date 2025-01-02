output "public_ip" {
  value = aws_instance.localname.public_ip
}

output "private_ip" {
  value = aws_instance.localname.private_ip
}