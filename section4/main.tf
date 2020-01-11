resource "aws_instance" "section4" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type   = var.type
    count           = var.number

    tags = {
        Name = var.name
    }
}