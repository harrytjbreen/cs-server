module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
  tag_name = var.tag_name
}

#module "route53" {
#  source = "./modules/route53"
#  hosted_zone = var.hosted_zone
#  record_name = var.record_name
#}

#module "cloudfront" {
#  source = "./modules/cloudfront"
#  bucket = module.s3.bucket
#  bucket_domain_name = module.s3.bucket_domain_name
#  aliases = var.aliases
#  tag_name = var.tag_name
#}

module "amplify" {
  source = "./modules/amplify"
  name = var.amplify_name
}

module "vpc" {
  source = "./modules/vpc"
  name = var.vpc_name
}