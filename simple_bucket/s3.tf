# Criação do bucket
resource "aws_s3_bucket" "this" {
  bucket              = "${var.bucket_name}"
  object_lock_enabled = var.object_lock_enabled
}

# Bucket Policy
resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = var.bucket_policy
}

# Habilitando versionamento
resource "aws_s3_bucket_versioning" "this" {
  depends_on = [aws_s3_bucket.this]
  bucket     = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning
  }
}

#Bloqueia o acesso publico.
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = var.public_acls["block_public_acls"]
  block_public_policy     = var.public_acls["block_public_policy"]
  ignore_public_acls      = var.public_acls["ignore_public_acls"]
  restrict_public_buckets = var.public_acls["restrict_public_buckets"]

}

# Bloqueia ACL Público
resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = var.acl
}
