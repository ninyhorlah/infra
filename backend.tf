terraform {
  backend "s3" {
    bucket = "clarity-backend-bucket"
    key    = "clarity-frontend"
    region = "eu-west-1"
  }
}
