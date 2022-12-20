resource "aws_security_group" "sg_dbinstance" {
  name        = "sg_dbinstance"
  description = "Grupo de Seguranca para a instancia do RDS"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Permitir todas as requisicoes de todas as origens"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Permitir requisicoes apenas do SG das instancias EC2"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Permitir ALL outbound para o RDS"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}