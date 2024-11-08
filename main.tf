provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIA2CUNLYNYY3K7ALXR"
  secret_key = "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"
}

resource "aws_iam_user" "name" {
  name = "test_user"
}