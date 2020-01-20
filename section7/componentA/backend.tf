terraform {
    backend "s3" {
        bucket  = "lernard-backend"
        key     = "section7A"
        region  = "us-east-1"
    }
}
