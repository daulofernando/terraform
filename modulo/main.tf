resource "aws_s3_bucket" "this" {
  bucket = var.name
  tags   = var.tags
  policy = var.policy
  acl    = var.acl

}