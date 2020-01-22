module "https" {
    source          = "../../modules/moduleA"
    instance_type   = "t2.micro"
    number          = "1"
    environment     = var.environment
    port            = "443"
    name            = "${var.name}-https"
}

module "http" {
    source          = "../../modules/moduleA"
    instance_type   = "t2.micro"
    number          = "1"
    environment     = var.environment
    port            = "80"
    name            = "${var.name}-http"
}

module "mysql_database" {
    source          = "../../modules/moduleB"
    instance_type   = "t2.micro"
    number          = "1"
    name            = "db"
    environment     = var.environment
    web_server_security_groups = [module.https.security_group_id, module.http.security_group_id]
}

