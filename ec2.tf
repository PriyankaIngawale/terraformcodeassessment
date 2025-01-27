resource "aws_instance" "nginx" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public[0].id
  security_groups = [aws_security_group.web_sg.id]
  key_name = aws_key_pair.TF_key.key_name
  user_data = "${file("install.sh")}"

  tags = {
    Name = "nginx-instance"
  }

}

data "aws_availability_zones" "available" {
  state = "available"
}

output "nginx_ip" {
  value = aws_instance.nginx.public_ip
}