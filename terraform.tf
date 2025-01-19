terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
    # Set to us-east-1 as this is where resources have to live
    # for the ACM certificate to be attached to CloudFront
    region = "us-east-1"
}
