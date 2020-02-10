resource "aws_s3_bucket" "default" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "bucket_access" {
  bucket = aws_s3_bucket.default.id

  block_public_acls       = var.block_public_acls       # defaults to true
  block_public_policy     = var.block_public_policy     # defaults to true
  ignore_public_acls      = var.ignore_public_acls      # defaults to true
  restrict_public_buckets = var.restrict_public_buckets # defaults to true
}
