module "s3" {
  source = "../../modules/s3"
}

module "rds_postgres" {
  source = "../../modules/rds-postgres"
}

module "elasticache" {
  source = "../../modules/elasticache"
}
module "ec2" {
  source = "../../modules/ec2"
}


# module "rds_mysql" {
#   source               = "../../modules/rds-mysql"
#   db_name              = var.mysql_db_name
#   db_username          = var.mysql_db_username
#   db_password          = var.mysql_db_password
#   db_instance_class    = var.mysql_db_instance_class
#   db_allocated_storage = var.mysql_db_allocated_storage
#   allowed_ip           = var.allowed_ip
# }


