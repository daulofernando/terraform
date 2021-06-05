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

data "aws_caller_identity" "current" {

}

resource "aws_s3_bucket" "remotestate" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    "Name"   = "remote state"
    "UpData" = "06/06/21"
  }

}

output "output_remote_state" {
  value = aws_s3_bucket.remotestate.arn

}


