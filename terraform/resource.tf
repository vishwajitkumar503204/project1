resource "aws_instance" "demo-server" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t2.micro"
  key_name               = "dpp"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]
  subnet_id              = aws_subnet.dpp-public-subnet-01.id
  for_each               = toset(["jenkins-master", "build-slave", "ansible"])

  tags = {
    Name = "${each.key}"
  }


}
