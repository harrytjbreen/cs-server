resource "aws_cloudfront_distribution" "s3_distribution" {
  enabled = true
  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = var.bucket
    viewer_protocol_policy = "allow-all"
    forwarded_values {
      query_string = true
      cookies {
        forward = "none"
      }
    }
  }

  is_ipv6_enabled = true

  origin {
    domain_name = var.bucket_domain_name
    origin_id   = var.bucket
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  tags = {
    project = var.tag_name
  }
}