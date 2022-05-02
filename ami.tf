module "user-ami" {
  source = "git::https://github.com/Madhu427/terraform-ami.git"
  COMPONENT = "user"
  APP_VERSION = var.APP_VERSION
}

variable "APP_VERSION" {}

provider "aws" {
  region = "us-east-1"
}


terraform {

  backend "s3" {
    bucket = "tf-bucket-61"
    key    = "ami/user/terraform.tfstate"
    region = "us-east-1"
  }
}

//

