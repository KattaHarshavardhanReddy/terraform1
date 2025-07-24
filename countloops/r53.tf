resource "aws_route53_record" "expense" {
    count = 3
  zone_id = var.zone
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
    count = 1
  zone_id = var.zone
  name    = var.domain_name
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[2].public_ip]
  allow_overwrite = true
}