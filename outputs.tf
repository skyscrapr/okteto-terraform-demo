output "endpoints" {
 // value = tolist(okteto_pipeline.okteto_aws_s3.deployments.*.endpoints)
 value = flatten([
    for endpoint in okteto_pipeline.okteto_aws_s3.deployments.*.endpoints :
    endpoint
  ])
}