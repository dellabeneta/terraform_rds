resource "aws_db_instance" "db_instance" {
  allocated_storage      = 10
  db_name                = "dbname"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  username               = "dbuser"
  password               = "dbpassadmin"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.db_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_dbinstance.id]
  publicly_accessible    = true
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "db-subnet"
  subnet_ids = [aws_subnet.subnet1.id]
}