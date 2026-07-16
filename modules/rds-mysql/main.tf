data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_security_group" "mysql" {
  name        = "mysql-public"
  description = "Allow MySQL"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "MySQL"

    from_port = 3306
    to_port   = 3306

    protocol = "tcp"

    cidr_blocks = [
      var.allowed_ip
    ]
  }
  egress {
    from_port = 0
    to_port   = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "mysql" {
  name = "mysql-subnets"

  subnet_ids = data.aws_subnets.default.ids
}

resource "aws_db_instance" "mysql" {
  identifier     = "huss-mysql-database"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = var.db_instance_class

  allocated_storage   = var.db_allocated_storage
  storage_type        = "gp3"
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  publicly_accessible = true

  db_subnet_group_name = aws_db_subnet_group.mysql.name

  vpc_security_group_ids = [
    aws_security_group.mysql.id
  ]

  skip_final_snapshot        = true
  deletion_protection        = false
  backup_retention_period    = 0
  auto_minor_version_upgrade = true
  apply_immediately          = true
  storage_encrypted          = true
  multi_az                   = false
}
