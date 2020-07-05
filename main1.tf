resource "aws_instance" "test-1"{
	ami = var.ami_id
	instance_type = var.instance_type
	tags = var.tags
	security_groups = ["${aws_security_group.ssh_connection.name}"]
}


resource "aws_security_group" "ssh_connection" {
  name        = var.sg_name
  description = "Allow one type of connection called  in variable"

dynamic "ingress"{
for_each = var.ingress_rules
content {
	description = ingress.value.description
	from_port   = ingress.value.from_port
	to_port     = ingress.value.to_port
	protocol    = ingress.value.protocol
	cidr_blocks = ingress.value.cidr_blocks   

	}
}

  tags = {
    Name = "allow_ssh_http"
  }
}
