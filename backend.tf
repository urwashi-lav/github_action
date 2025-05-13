  backend "s3" {
    bucket         = "gitaction-backend"
    region         = "us-east-1"
    key            = "gitaction-backend/terraform.tfstate"
    encrypt        = true
  }
