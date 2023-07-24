resource okteto_secret "aws_access_key_id" {
    name = "AWS_ACCESS_KEY_ID"
    value = aws_iam_access_key.okteto_deploy.id
}

resource okteto_secret "aws_secret_access_key" {
    name = "AWS_SECRET_ACCESS_KEY"
    value = aws_iam_access_key.okteto_deploy.secret
}

