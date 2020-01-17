terraform {
    backend "s3" {
        bucket  = "lernard-backend"
        key     = "section6"
        region  = "us-east-1"
    }
}
