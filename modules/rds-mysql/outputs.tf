output "database_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "database_port" {
  value = aws_db_instance.mysql.port
}

output "database_name" {
  value = aws_db_instance.mysql.db_name
}

output "database_username" {
  value = aws_db_instance.mysql.username
}

output "connection_url" {
  value     = "mysql://${var.db_username}:${var.db_password}@${aws_db_instance.mysql.endpoint}/${var.db_name}"
  sensitive = false 
}
