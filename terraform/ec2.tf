resource "aws_instance" "elasticsearch_a" {
  instance_type = "t2.micro"
  ami           = "${data.aws_ami.ami.id}"

  tags = {
    "Project" = "elasticsearch"
    "Node"    = "elasticsearch_master"
    "Name"    = "elasticsearch_master"
  }
}

resource "aws_network_interface_sg_attachment" "elasticsearch_sg_attachment" {
  security_group_id    = "${aws_security_group.elasticsearch_sg.id}"
  network_interface_id = "${aws_instance.elasticsearch_a.primary_network_interface_id}"
}

