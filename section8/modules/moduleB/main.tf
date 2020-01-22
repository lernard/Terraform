resource "aws_instance" "server" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type   = var.instance_type
    count           = var.number

    vpc_security_group_ids = [aws_security_group.securityB.id]  #[data.terraform_remote_state.componentB.outputs.security_group_id]

    tags = {
        Name = "${var.environment}-${var.name}"
    }
}

resource "aws_security_group" "securityB" {
    name        = "${var.environment}-${var.name}"
    description = "Allow all ${var.port}"

    ingress {
        from_port       = var.port
        to_port         = var.port
        protocol        = "tcp"
        security_groups = var.web_server_security_groups
    }
}
