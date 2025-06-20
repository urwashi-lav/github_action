terraform {
  backend "s3" {
    bucket         = "gitaction-backend"
    key            = "github/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "my-lock-tf-table"
  }
}
