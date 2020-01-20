resource "aws_security_group" "allow_tls" {
    name        = "allow_tls"
    description = "Allow all 443"

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}