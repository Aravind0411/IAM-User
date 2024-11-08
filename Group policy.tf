resource "aws_iam_policy" "Batch_group_policy" {
  name        = "Batch-policy"
  description = "My test policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow",
        Action = "ec2:*",
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_group_policy_attachment" "custom_policy" {
  group      = aws_iam_group.Batch_group.name
  policy_arn = aws_iam_policy.Batch_group_policy.arn
}