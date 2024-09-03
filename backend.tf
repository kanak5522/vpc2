terraform {
  backend "s3" {
    bucket         = "my-ubucket"
    key            = "terraform/state.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraformmm-lock"
    encrypt        = true
  }
}
