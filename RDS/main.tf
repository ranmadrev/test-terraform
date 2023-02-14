resource "aws_db_instance" "default" {
    address                               = "database-1.cwgi01pzgmf0.us-east-1.rds.amazonaws.com"
    allocated_storage                     = 20
    auto_minor_version_upgrade            = true
    availability_zone                     = "us-east-1f"
    backup_retention_period               = 7
    backup_window                         = "03:54-04:24"
    ca_cert_identifier                    = "rds-ca-2019"
    copy_tags_to_snapshot                 = true
    db_subnet_group_name                  = "default-vpc-02301b3cfa866bc4c"
    delete_automated_backups              = true
    deletion_protection                   = false
    enabled_cloudwatch_logs_exports       = [
        "audit",
        "error",
        "general",
        "slowquery",
    ]
    endpoint                              = "database-1.cwgi01pzgmf0.us-east-1.rds.amazonaws.com:3306"
    engine                                = "mysql"
    engine_version                        = "8.0.28"
    hosted_zone_id                        = "Z2R2ITUGPM61AM"
    iam_database_authentication_enabled   = false
    id                                    = "database-1"
    identifier                            = "database-1"
    instance_class                        = "db.m6g.large"
    iops                                  = 0
    kms_key_id                            = "arn:aws:kms:us-east-1:122310918617:key/da8028c7-40e2-4a12-a3bd-fe44df945809"
    latest_restorable_time                = "2022-07-20T08:50:00Z"
    license_model                         = "general-public-license"
    maintenance_window                    = "fri:06:04-fri:06:34"
    max_allocated_storage                 = 1000
    monitoring_interval                   = 60
    monitoring_role_arn                   = "arn:aws:iam::122310918617:role/rds-monitoring-role"
    multi_az                              = true
    option_group_name                     = "default:mysql-8-0"
    parameter_group_name                  = "default.mysql8.0"
    performance_insights_enabled          = true
    performance_insights_kms_key_id       = "arn:aws:kms:us-east-1:122310918617:key/da8028c7-40e2-4a12-a3bd-fe44df945809"
    performance_insights_retention_period = 7
    port                                  = 3306
    publicly_accessible                   = false
    replicas                              = []
    security_group_names                  = []
    skip_final_snapshot                   = true
    status                                = "available"
    storage_encrypted                     = true
    storage_type                          = "gp2"
    tags                                  = {}
    username                              = "admin"
    vpc_security_group_ids                = [
        "sg-0d18b561dedb7e776",
    ]

    timeouts {}
}
