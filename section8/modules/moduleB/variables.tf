variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "number" {
    type = number
    default = "1"
}

variable "environment" {
    default = "dev"
}

variable "web_server_security_groups" {}

variable "port" {
    default = "3306"
}

variable "name" {}

