provider "aws" {
   access_key = ""
   secret_key = ""
   region = ""
}

provider "aws" {
   alias = "virginia"
   region = "us-east-1"
}

provider "aws" {
   alias = "oregon"
   region = "us-west-2"
}