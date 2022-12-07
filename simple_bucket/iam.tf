resource "aws_iam_policy" "this_bucket_policy" {
  depends_on = [
    aws_s3_bucket.this
  ]
  name        = var.this_bucket_name
  path        = var.path
  description = var.this_bucket_description

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "BucketAccess",
            "Effect": "Allow",
            "Action": ["s3:GetObject", "s3:PutObject", "s3:DeleteObject","s3:ListBucket"],
            "Resource": "${aws_s3_bucket.this.arn}"
        }
    ]
}
POLICY
}
