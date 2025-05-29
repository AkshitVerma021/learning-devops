terraform {
  backend "s3" {
    bucket         = "test-case-generator-akki" # Replace with your bucket name
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}