terraform {
    required_version = "~>1.3.7"

    # required_providers {
    #   aws = {
    #     version = "~>5.17.0"
    #   }
    # }

    backend "s3" {
        bucket = "s3-backend-terraform-project-1"
        key    = "main/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "s3-backend-locking-table"
    }
}