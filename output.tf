output "instance_ip"{
	value = aws_instance.test-1.*.public_ip
}
