
output "route53_ns" {
  value = aws_route53_zone.elixir_lang_tokyo.name_servers
}

