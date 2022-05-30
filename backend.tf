terraform {
  backend "s3" {
    bucket         = "anya-app-infra-state-bucket"
    region         = "eu-west-1"
    key            =  "terraform.tfstate"
  }
}
