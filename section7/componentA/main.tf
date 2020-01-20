resource "aws_instance" "section7A" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type   = var.type
    count           = var.number

    vpc_security_group_ids = [data.terraform_remote_state.componentB.outputs.security_group_id]

    tags = {
        Name = var.name
    }
}

