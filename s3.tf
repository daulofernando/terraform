resource "aws_s3_bucket" "this" {

  bucket = "daulofilhobalde"
  acl    = "private"

  tags = local.s3_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "daulomanual1"
  tags = {
    "Name"   = "importado"
    "Updata" = "27/05/21"
  }
}


