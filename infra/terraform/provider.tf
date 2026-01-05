terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Day4에서는 로컬 state 사용 (기본값)
  # Day11에서 S3 + DynamoDB로 remote state로 확장
}

provider "aws" {
  region = var.aws_region
}
