module "s3_backend" {
    source = "./modules/s3_backend"
    s3_bucket_name = "s3-backend-terraform-project-1"
}

module "dynamodb_locking" {
    source = "./modules/dynamodb"
    dynamodb_name = "s3-backend-locking-table"
}