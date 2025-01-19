#resource "aws_s3_object" "object-upload-html" {
#    for_each        = fileset("uploads/", "*.html")
#    bucket          = aws_s3_bucket.website.bucket
#    key             = each.value
#    source          = "uploads/${each.value}"
#    content_type    = "text/html"
#    etag            = filemd5("uploads/${each.value}")
#    acl             = "public-read"
#}
#
#resource "aws_s3_object" "object-upload-css" {
#    for_each        = fileset("uploads/", "*.css")
#    bucket          = aws_s3_bucket.website.bucket
#    key             = each.value
#    source          = "uploads/${each.value}"
#    content_type    = "text/html"
#    etag            = filemd5("uploads/${each.value}")
#    acl             = "public-read"
#}
#
#resource "aws_s3_object" "object-upload-js" {
#    for_each        = fileset("uploads/", "*.js")
#    bucket          = aws_s3_bucket.website.bucket
#    key             = each.value
#    source          = "uploads/${each.value}"
#    content_type    = "text/html"
#    etag            = filemd5("uploads/${each.value}")
#    acl             = "public-read"
#}
#
#resource "aws_s3_object" "object-upload-jpg" {
#    for_each        = fileset("uploads/", "*.jpeg")
#    bucket          = aws_s3_bucket.website.bucket
#    key             = each.value
#    source          = "uploads/${each.value}"
#    content_type    = "image/jpeg"
#    etag            = filemd5("uploads/${each.value}")
#    acl             = "public-read"
#}
#
#resource "aws_s3_object" "object-upload-png" {
#    for_each        = fileset("uploads/", "*.png")
#    bucket          = aws_s3_bucket.website.bucket
#    key             = each.value
#    source          = "uploads/${each.value}"
#    content_type    = "image/jpeg"
#    etag            = filemd5("uploads/${each.value}")
#    acl             = "public-read"
#}
