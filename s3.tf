resource "aws_s3_bucket" "this" {

  bucket = "daulofilhobalde"
  acl    = "private"

  tags = local.s3_tags
}