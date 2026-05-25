resource "aws_db_instance" "postgres" {

  identifier = "${var.environment}-postgres"

  allocated_storage = 20

  engine = "postgres"

  engine_version = "15"

  instance_class = "db.t3.micro"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  publicly_accessible = false

  username = var.db_username
  password = var.db_password

  storage_encrypted = true
}