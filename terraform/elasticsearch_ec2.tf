resource "aws_instance" "elasticsearch_master" {
  instance_type = "t2.micro"
  ami           = "${data.aws_ami.ami.id}"
  key_name      = "elasticsearch_key"
  security_groups = ["elasticsearch_sg"]

  tags = {
    "Project" = "elasticsearch"
    "Node"    = "elasticsearch_master"
    "Name"    = "elasticsearch_master"
  }
}
