resource okteto_pipeline "okteto_aws_lambda" {
    name = "okteto_aws_lambda"
    repo_url = "https://github.com/skyscrapr/okteto-aws-lambda.git"
    branch = "main"

    depends_on = [
        okteto_secret.aws_access_key_id,
        okteto_secret.aws_secret_access_key
    ]
}
