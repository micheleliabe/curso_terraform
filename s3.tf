#Cria um bucket
resource "aws_s3_bucket" "bucket-2" {
  bucket = "teste-${random_pet.bucket.id}-${var.environment}"
  tags   = local.tags
}

#Envia um arquivo para o bucket
resource "aws_s3_bucket_object" "bucket-2" {
  bucket = aws_s3_bucket.bucket-2.bucket
  key    = "config/${local.ips_path}"
  source = local.ips_path
  #Verifica se o arquivo foi modificado
  etag = filemd5(local.ips_path)
}