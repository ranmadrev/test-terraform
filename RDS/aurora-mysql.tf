resource "aws_rds_cluster" "db_cluster" {
  cluster_identifier      			= "aurora-cluster-demo"
  engine                  			= "aurora-mysql"
  engine_version          			= "5.7.mysql_aurora.2.11.1"
  availability_zones     			= ["us-east-1a", "us-east-1b", "us-east-1c"]
  copy_tags_to_snapshot				= false
  database_name						= "testdb"
  port								= (known after apply)
  master_username					= "test"
  master_password					= "test1234567"
  backup_retention_period			= 5
  preferred_backup_window			= "07:00-09:00"
  db_cluster_parameter_group_name	= (known after apply)
  db_subnet_group_name				= (known after apply)
  kms_key_id						= (known after apply)
  skip_final_snapshot				= false
  storage_encrypted					= (known after apply)
  tags_all							= (known after apply)
  vpc_security_group_ids			= (known after apply)
}

resource "aws_rds_cluster_instance" "db_instance" {
  cluster_identifier	= aws_rds_cluster.db_cluster.id
  identifier			= "database-1"
  instance_class		= "db.t3.large"
  engine				= aws_rds_cluster.db_cluster.engine
  engine_version		= aws_rds_cluster.db_cluster.engine_version
}
