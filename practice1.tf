terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
        version = "4.59.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_spot_instance_request" "app_server" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.small"
}

