terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-own-tf-bucket"  # Replace with your bucket name
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"  # Your newly created DynamoDB table
    encrypt        = true
  }
}
