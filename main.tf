provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "tef_state" {
  bucket = "my-ubucket"
  acl    = "private"
}

resource "aws_dynamodb_table" "tff_lock" {
  name           = "terraformmm-lock"
  hash_key        = "LockID"
  read_capacity   = 1
  write_capacity  = 1
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_vpc" "mainn" {
  cidr_block = "10.0.0.0/16"
}

output "bucket_name" {
  value = aws_s3_bucket.tef_state.bucket
}
