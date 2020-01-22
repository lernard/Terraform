terraform {
    backend "s3" {
        bucket  = "lernard-backend"
        key     = "dev"
        region  = "us-east-1"
    }
}
