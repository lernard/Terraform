terraform {
    backend "s3" {
        bucket  = "lernard-backend"
        key     = "section7B"
        region  = "us-east-1"
    }
}
