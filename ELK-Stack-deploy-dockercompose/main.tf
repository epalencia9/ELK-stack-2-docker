resource "aws_instance" "docker_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name = "Natalierose"
  security_groups = ["default"]
  user_data = file("docker-compose.yml")

  tags = {
    Name = "docker_svr-terraform"
  }
}
