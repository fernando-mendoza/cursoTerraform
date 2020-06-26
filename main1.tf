resource "aws_instance" "test-1"{
	ami = var.ami_id
	instance_type = var.instance_type
	tags = var.tags
}
