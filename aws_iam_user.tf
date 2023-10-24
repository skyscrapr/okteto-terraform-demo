resource "aws_iam_user" "okteto_deploy" {
  name = "okteto_deploy"
}

resource "aws_iam_user_policy_attachment" "cloudformation_fullaccess" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationFullAccess"
}

resource "aws_iam_user_policy_attachment" "iam_full_access" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_user_policy_attachment" "lambda_full_access" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
}

resource "aws_iam_user_policy_attachment" "api_gateway_admin" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
}

resource "aws_iam_user_policy_attachment" "s3_full_access" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_policy_attachment" "ddb_full_access" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.okteto_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_access_key" "okteto_deploy" {
  user = aws_iam_user.okteto_deploy.name
}
