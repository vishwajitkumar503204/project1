provider "aws" {
  region = var.region

}

output "test_ec2" {
  value = aws_instance.demo-server.public_ip
}
