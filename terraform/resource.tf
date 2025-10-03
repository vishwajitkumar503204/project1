resource "aws_instance" "demo-server" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t2.micro"
  key_name               = "dpp"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  tags = {
    Name = "test_ec2"
  }


}
