terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=6.29.0"
    }
  }
  backend "s3" {
    bucket         = "amzn-dawgs-s3"
    key            = "roboshop-dev-sg-rules"
    region         = "us-east-1"
    # Optional: Enable state locking with DynamoDB
    # dynamodb_table = "my-lock-table"
    encrypt        = true
    use_lockfile = true
  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}