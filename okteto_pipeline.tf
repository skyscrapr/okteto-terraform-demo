# resource okteto_pipeline "okteto_aws_s3" {
#     name = "okteto_aws_s3"
#     repo_url = "https://github.com/skyscrapr/oktetodo-terraform-s3.git"
#     branch = "main"

#     depends_on = [
#         okteto_secret.aws_access_key_id,
#         okteto_secret.aws_secret_access_key,
#         okteto_secret.aws_region,
#         aws_iam_user.okteto_deploy,
#         aws_iam_user_policy_attachment.cloudformation_fullaccess,
#         aws_iam_user_policy_attachment.iam_full_access,
#         aws_iam_user_policy_attachment.lambda_full_access,
#         aws_iam_user_policy_attachment.api_gateway_admin,
#         aws_iam_user_policy_attachment.s3_full_access,
#         aws_iam_user_policy_attachment.ddb_full_access,
#         aws_iam_user_policy_attachment.admin_access,
#         aws_iam_access_key.okteto_deploy
#     ]
# }
