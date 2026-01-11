output "ec2_instance_ids" {
  value = module.ec2_instances.instance_ids
}

output "ec2_public_ips" {
  value = module.ec2_instances.public_ips
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}
