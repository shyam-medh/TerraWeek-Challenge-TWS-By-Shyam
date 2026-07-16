resource "aws_instance" "terraweek_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Lifecycle rule
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "TerraWeek-Day3-Server"
  }
}
