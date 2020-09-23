resource "aws_db_instance" "edx_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "edx_db"
  username             = "master"
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
}

# export TF_VAR_password=pREgAMbaLkITACTouRLerionsiblEAKE
