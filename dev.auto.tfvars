ami_id="ami-0fa7c53b6cba7b8bf"
instance_type="t2.micro"
tags={Name="test1", Enviroment="Dev1"}
sg_name = "security-group-1"
ingress_rules = [
{
description = "ssh",
from_port = "22",
to_port = "22",
protocol = "tcp",
cidr_blocks = ["0.0.0.0/0"]
},
{
description = "http",
from_port = "80",
to_port = "80",
protocol = "tcp",                                                   	    cidr_blocks = ["0.0.0.0/0"]
}
]
