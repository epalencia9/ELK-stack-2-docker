resource "aws_instance" "docker_server" {
  ami             = "ami-0df24e148fdb9f1d8"
  instance_type   = "t2.micro"
  key_name = "Natalierose"
  security_groups = ["default"]
  user_data = file("docker-compose.yml")

  tags = {
    Name = "docker-svr-terraform"
  }
}
