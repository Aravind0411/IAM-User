variable "username" {
  type    = list(string)
  default = ["Gokul", "Abinesh", "Dhuruvan", "Arjun", "Vignesh"]
}

resource "aws_iam_user" "userlist" {
  count = length(var.username)
  name  = element(var.username, count.index)
}
