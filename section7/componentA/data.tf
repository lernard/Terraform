data "terraform_remote_state" "componentB" {
    backend = "s3"
    config = {
        bucket  = "lernard-backend"
        key     = "section7B"
        region  = "us-east-1"
    }
}