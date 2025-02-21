provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_s3_bucket" "example" {
  bucket = "sibram-s3-bucket"  # S3 bucket name (must be globally unique)

  tags = {
    Name        = "Bucket"
    Environment = "Ec2-server"
  }
}
