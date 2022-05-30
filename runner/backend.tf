terraform {
  backend "s3" {
    bucket         = "anya-runner-bucket"
    region         = "eu-west-1"
    key            =  "terraform.tfstate"
  }
}
