resource "aws_acm_certificate" "croffle_app" {
  domain_name       = "croffle.app"
  validation_method = "DNS"

  tags = {
    Environment = "acm"
  }

  lifecycle {
    create_before_destroy = true
  }
}
