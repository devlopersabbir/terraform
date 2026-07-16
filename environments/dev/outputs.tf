# output "bucket_name" {
#   value = module.s3.bucket_name
# }

# output "bucket_arn" {
#   value = module.s3.bucket_arn
# }

# output "database_endpoint" {
#   value = module.rds.database_endpoint
# }

# output "database_port" {
#   value = module.rds.database_port
# }

# output "database_name" {
#   value = module.rds.database_name
# }

# output "database_username" {
#   value = module.rds.database_username
# }

# output "database_connection_url" {
#   value     = module.rds.connection_url
#   sensitive = true
# }

# output "mysql_database_endpoint" {
#   value = module.rds_mysql.database_endpoint
# }

# output "mysql_database_port" {
#   value = module.rds_mysql.database_port
# }

# output "mysql_database_name" {
#   value = module.rds_mysql.database_name
# }

# output "mysql_database_username" {
#   value = module.rds_mysql.database_username
# }

# output "mysql_database_connection_url" {
#   value     = module.rds_mysql.connection_url
#   sensitive = true
# }


# # ec2 instance output
# output "instance_id" {
#   value = aws_instance.server.id
# }

# output "public_ip" {
#   value = aws_instance.server.public_ip
# }

# output "public_dns" {
#   value = aws_instance.server.public_dns
# }

# output "ssh_command" {
#   value = "ssh -i ${var.ssh_key_name}.pem admin@${aws_instance.server.public_ip}"
# }

