terraform {
  backend "s3" {
      bucket = "s3bucket236"
      region = "us-east-1"
      profile = "prod"
      #key = "terraform.tfstate"
  }
}


terraform {
  backend "s3" {
    bucket         = "s3bucket236"
    region         = "us-east-1"
    profile        = "default"
    #key            = "terraform.tfstate"
    dynamodb_table = "devops14-lock-table"
  }
}
