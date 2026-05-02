resource "aws_dynamodb_table" "metadata" {
  name         = "image-metadata"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "image_id"

  attribute {
    name = "image_id"
    type = "S"
  }
}