resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = {
    project = var.tag_name
  }
}

resource "aws_s3_bucket_website_configuration" "configuration" {
  bucket = aws_s3_bucket.bucket.bucket
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_policy" "root_policy" {
  bucket = var.bucket_name
  policy = templatefile("${path.root}/templates/s3-policy.json", { bucket_name = aws_s3_bucket.bucket.bucket })
}