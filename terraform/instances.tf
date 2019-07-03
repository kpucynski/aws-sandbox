resource "aws_instance" "test_a" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "t2.nano"
  availability_zone      = "eu-west-1a"
  vpc_security_group_ids = ["${aws_security_group.all.id}"]
  user_data              = "${file("userdata.sh")}"
  subnet_id              = "${aws_subnet.subnet_a.id}"
  depends_on             = ["aws_internet_gateway.gw"]
  key_name               = "${aws_key_pair.kpu.key_name}"
}

resource "aws_instance" "test_b" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "t2.nano"
  availability_zone      = "eu-west-1b"
  vpc_security_group_ids = ["${aws_security_group.all.id}"]
  user_data              = "${file("userdata.sh")}"
  subnet_id              = "${aws_subnet.subnet_b.id}"
  depends_on             = ["aws_internet_gateway.gw"]
  key_name               = "${aws_key_pair.kpu.key_name}"
}

resource "aws_instance" "test_c" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "t2.nano"
  availability_zone      = "eu-west-1c"
  vpc_security_group_ids = ["${aws_security_group.all.id}"]
  user_data              = "${file("userdata.sh")}"
  subnet_id              = "${aws_subnet.subnet_c.id}"
  depends_on             = ["aws_internet_gateway.gw"]
  key_name               = "${aws_key_pair.kpu.key_name}"
}
