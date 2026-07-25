# module "s3" {
#   source      = "../../modules/s3"
#   bucket_name = var.bucket_name
#   environment = "Dev"
# }

# module "rds_postgres" {
#   source               = "../../modules/rds-postgres"
#   db_name              = var.db_name
#   db_username          = var.db_username
#   db_password          = var.db_password
#   db_instance_class    = var.db_instance_class
#   db_allocated_storage = var.db_allocated_storage
#   allowed_ip           = var.allowed_ip
# }

# module "rds_mysql" {
#   source               = "../../modules/rds-mysql"
#   db_name              = var.mysql_db_name
#   db_username          = var.mysql_db_username
#   db_password          = var.mysql_db_password
#   db_instance_class    = var.mysql_db_instance_class
#   db_allocated_storage = var.mysql_db_allocated_storage
#   allowed_ip           = var.allowed_ip
# }


# module "ec2" {
#   source = "../../modules/ec2"
#   instance_name    = var.instance_name
#   instance_type    = var.instance_type
#   ssh_key_name     = var.ssh_key_name
#   allowed_ssh_ip   = var.allowed_ssh_ip
#   root_volume_size = var.root_volume_size
# }

module "elasticache" {
  source      = "../../modules/elasticache"
  cache_name  = var.valkey_cache_name
  environment = "Dev"
}
