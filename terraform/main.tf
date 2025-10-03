provider "aws" {
  region = var.region

}

# output "test_ec2" {
#   value = aws_instance.demo-server.public_ip
# }

output "demo_server_public_ips" {
  value       = { for k, inst in aws_instance.demo-server : k => inst.public_ip }
  description = "Public IPs of demo-server instances"
}
