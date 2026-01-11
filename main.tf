module "ec2_instances" {
  source         = "./modules/ec2"
  instance_count = 2
  instance_type  = var.instance_type
  key_name       = var.key_name
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
}
