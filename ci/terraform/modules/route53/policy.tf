resource "aws_route53_zone" "hosted_zone" {
  name = var.hosted_zone
}

resource "aws_route53_record" "frontend_record" {
  name    = var.record_name
  type    = "A"
  zone_id = aws_route53_zone.hosted_zone.name
}