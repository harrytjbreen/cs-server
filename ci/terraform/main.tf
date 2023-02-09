module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
  tag_name = var.tag_name
}