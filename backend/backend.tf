terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "tj-remote-backend-2020"
        region = "us-west-1"
        access_key = "your_access_key"
        secret_key = "your_secret_key"
    }
}