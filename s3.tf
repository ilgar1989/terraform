resource "aws_s3_bucket" "feruza-bucket" {
  bucket = var.bucket_name
  acl    = "private"
}
