provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "example-user-bucket-ap-south-1"
  acl    = "private"

  tags = {
    Name        = "ExampleS3Bucket"
    Environment = "Dev"
  }
}
