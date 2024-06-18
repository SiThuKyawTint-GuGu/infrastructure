variable "domain_name" {}
variable "hosted_zone_id" {}

output "dev_proj_1_acm_arn" {
  value = aws_acm_certificate.dev_proj_1_acm_arn.arn
}

resource "aws_acm_certificate" "dev_proj_1_acm_arn" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  tags = {
    Environment = "production"
  }

  lifecycle {
    create_before_destroy = false
  }
}

resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.dev_proj_1_acm_arn.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = "Z00232151DQT8DDIJGBL2"
  name    = "_752a7c0ed101f5525ffd22f0f0602f7a.jenkins.server-nocnum.com."
  type    = "CNAME"
  records = [each.value.record]
  ttl     = 60
}

