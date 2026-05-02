resource "aws_s3_bucket" "input" {
  bucket = "input-bucket-unique-name"
}

resource "aws_s3_bucket" "output" {
  bucket = "output-bucket-unique-name"
}