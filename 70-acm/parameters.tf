resource "aws_ssm_parameter" "frontend_alb_cert_arn" {
  name  = "/${var.project_name}/${var.environment}/frontend_alb_cert_arn"
  type  = "String"
  value = aws_acm_certificate.cert.arn
}