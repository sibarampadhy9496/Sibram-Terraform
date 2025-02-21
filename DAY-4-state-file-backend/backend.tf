 terraform {
backend "s3" {
    bucket         = "sib-s3-bucket"  # Name of the S3 bucket where the state will be stored.
    region         =  "ap-south-1"
    key            = "terraform.tfstate" # Path within the bucket where the state will be read/written.
}
}