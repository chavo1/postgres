

resource "aws_db_instance" "dev" {
  identifier                = "dev"
  allocated_storage         = 1
  storage_type              = "io1"
  engine                    = "aurora-postgresql"
  engine_version            = "9.6.12"
  instance_class            = "db.r4.large"
  name                      = ""
  username                  = "postgres"
  password                  = "password123"
  port                      = 5432
  publicly_accessible       = true
  availability_zone         = "us-west-2c"
  security_group_names      = []
  vpc_security_group_ids    = ["sg-0249dad6a5c44ee20"]
  db_subnet_group_name      = "default"
  parameter_group_name      = "postgres9-6-aurora-pgaudit-workmem"
  multi_az                  = false
  backup_retention_period   = 7
  backup_window             = "08:41-09:11"
  maintenance_window        = "sat:09:09-sat:09:39"
  final_snapshot_identifier = "dev-final"
}
