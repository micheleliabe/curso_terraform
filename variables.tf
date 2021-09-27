variable "aws_region" {
  type        = string
  description = "Regiao padrão da AWS"
  default     = "us-east-1"
}


variable "aws_profile" {
  type        = string
  description = "Perfil padrão das configurações de chaves"
}

variable "aws_instance_ami" {
  type        = string
  description = "Ami padrão para criaçao de instancias EC2"
  default     = "ami-087c17d1fe0178315"
}

variable "aws_instance_type" {
  type        = string
  description = "Tipo padrão para criação de instancias EC2"
  default     = "t2.micro"
}


variable "aws_default_tags" {
  type        = map(string)
  description = "Tags padrao para identificaçao de recursos"
  default = {
    Name = "Curso terraform com AWS"
  }
}