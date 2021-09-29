output "bucket_name" {
  value       = aws_s3_bucket.bucket-1.arn
  description = "ARN do bucket"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.bucket-1.bucket_domain_name
  description = "Nome de dominio do bucket"
}

output "file_path" {
  value       = "${aws_s3_bucket.bucket-1.bucket}/${aws_s3_bucket_object.bucket-2.key}"
  description = "Caminho do arquivo"
}