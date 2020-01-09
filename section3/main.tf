resource "aws_instance" "section3" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    count = "1"

    tags = {
        Name = "section3"
    }
}