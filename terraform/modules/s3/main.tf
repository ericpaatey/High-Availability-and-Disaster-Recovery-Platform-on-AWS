resource "aws_s3_bucket" "backups" {

  bucket = "${var.environment}-ha-dr-backups"
}

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.backups.id

  versioning_configuration {
    status = "Enabled"
  }
}