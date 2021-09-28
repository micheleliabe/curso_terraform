#Define a região padrao da AWS
variable "aws_region" {
  type        = string
  description = "Regiao padrão da AWS"
  default     = "us-east-1"
}

#Define o perfil padrão refente à configuração de Keys do AWS CLI
variable "aws_profile" {
  type        = string
  description = "Perfil padrão das configurações de chaves"
  default     = "terraform"
}

#Define o id da imagem padrão que será utilizada na criação de instancias EC2
variable "aws_instance_ami" {
  type        = string
  description = "Ami padrão para criaçao de instancias EC2"
  default     = "ami-087c17d1fe0178315"
}

#Define o tipo de instancia EC2 que será utilizada na criação
variable "aws_instance_type" {
  type        = string
  description = "Tipo padrão para criação de instancias EC2"
  default     = "t2.micro"
}

#Define as tags padrão que serão adicionadas nos recursos
variable "aws_default_tags" {
  type        = map(string)
  description = "Tags padrao para identificaçao de recursos"
  default = {
    Name = "Curso terraform com AWS"
  }
}

variable "environment" {
  type        = string
  description = "Ambiente"
  default     = "dev"
}