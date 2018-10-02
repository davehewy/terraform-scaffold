resource "aws_instance" "web_instance" {
  instance_type = "${var.instance_type}"
  ami = "ami-0bdb1d6c15a40392c"
  subnet_id = "subnet-620d8d15"
  tags = {
    Name = "test.terraform.instance"
  }
}
