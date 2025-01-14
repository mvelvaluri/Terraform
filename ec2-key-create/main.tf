resource "aws_key_pair" "terrakey" {
  key_name   = "test_public_key"
  public_key = file("~/.ssh/id_ed25519.pub")
}