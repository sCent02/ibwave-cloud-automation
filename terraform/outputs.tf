output "ec2_instance_id" {
  value = aws_instance.ibwave.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.ibwave_bucket.bucket
}