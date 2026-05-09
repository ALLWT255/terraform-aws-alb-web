output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.web_alb.dns_name
}