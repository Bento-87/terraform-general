output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "bucket_id" {
    value = aws_s3_bucket.this.id
}

output "bucket_region" {
    value = aws_s3_bucket.this.region
}

output "iam_policy_arn" {
  value = aws_iam_policy.this_bucket_policy.arn
}

output "iam_policy_id" {
  value = aws_iam_policy.this_bucket_policy.id
}