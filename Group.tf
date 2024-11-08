resource "aws_iam_group" "Batch_group" {
  name = "Batch1"
}

resource "aws_iam_user_group_membership" "user_group_membership" {
  count  = length(var.username)
  user   = element(var.username, count.index)
  groups = [aws_iam_group.Batch_group.name, ]
}