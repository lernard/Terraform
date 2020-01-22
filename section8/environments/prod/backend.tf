terraform {
    backend "s3" {
        bucket  = "lernard-backend"
        key     = "prod"
        region  = "us-east-1"
    }
}
