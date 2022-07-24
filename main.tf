provider "aws" {
  # The security credentials for AWS Account A.

  assume_role {
    # The role ARN within Account B to AssumeRole into. Created in step 1.
    role_arn    = var.role_arn
  }
}


resource "aws_iam_policy" "s3_bucket_policy" {
  name = "ash-policy-s3-list"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:ListAllMyBuckets", "s3:ListBucket", "s3:HeadBucket"]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}