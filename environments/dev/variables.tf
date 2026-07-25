variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type        = string
}

variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}


variable "bucket_name" {
  description = "Global unique name for the bucket"
  type        = string
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "huss"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "huss"
}

variable "db_password" {
  description = "Database password"
  type        = string
}

variable "db_instance_class" {
  description = "RDS Instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Storage in GB"
  type        = number
  default     = 20
}

variable "allowed_ip" {
  description = "Your public IP"
  type        = string
  default     = "0.0.0.0/0"
}

#### EC2 Instance variables
variable "instance_name" {
  description = "Name of the EC2 instance."
  type        = string
  default     = "debian-server"
}

variable "instance_type" {
  description = "Type of EC2 instance to launch."
  type        = string
  default     = "t3.micro"
}

variable "ssh_key_name" {
  description = "Existing aws key pair name"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "Allowed IPs for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 20
}

#### MySQL RDS variables
variable "mysql_db_name" {
  description = "Initial MySQL database name"
  type        = string
  default     = "pulse_mysql"
}

variable "mysql_db_username" {
  description = "MySQL database username"
  type        = string
  default     = "pulse"
}

variable "mysql_db_password" {
  description = "MySQL database password"
  type        = string
  default     = "Pul$e2026_mysql"
}

variable "mysql_db_instance_class" {
  description = "MySQL RDS Instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "mysql_db_allocated_storage" {
  description = "MySQL storage in GB"
  type        = number
  default     = 20
}

#### ElastiCache Valkey Serverless variables
variable "valkey_cache_name" {
  description = "Unique name for the ElastiCache Valkey Serverless cache"
  type        = string
  default     = "my-valkey"
}
