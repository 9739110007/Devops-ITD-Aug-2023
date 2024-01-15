locals {
    hash_key_local = "LockID"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.dynamodb_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = local.hash_key_local

  attribute {
    name = local.hash_key_local
    type = "S"
  }
}
