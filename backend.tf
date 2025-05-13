terraform {
  backend "s3" {
    bucket         = "gitaction-backend"
    region         = "ap-south-1"
    key            = "gitaction-backend/terraform.tfstate"
    encrypt        = true
  }
}