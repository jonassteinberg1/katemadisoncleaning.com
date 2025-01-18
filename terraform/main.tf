resource "aws_s3_bucket" "katemadisoncleaning" {
  bucket = "katemadisoncleaning.com"

  tags = {
    name        = "katemadisoncleaning.com"
    environment = "prod"
    owner       = "jonassteinberg1@gmail.com"
  }
}

resource "aws_s3_bucket_website_configuration" "katemadisoncleaning" {
  bucket = aws_s3_bucket.katemadisoncleaning.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}
