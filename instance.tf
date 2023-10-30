

resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = [ "${aws_security_group.allow_tls.id}" ]

  tags = {
    Name = "Terraform-created"
  }
}
output "public-ip" {
    value = "${aws_instance.web.public_ip}"
  
}
