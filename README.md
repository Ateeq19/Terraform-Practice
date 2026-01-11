# Terraform AWS Infrastructure (EC2 + S3)

This repository contains an **Infrastructure as Code (IaC)** setup using **Terraform** to provision AWS resources in a modular and reusable way.

## 🚀 What This Project Creates

- ✅ **2 Amazon EC2 instances** (Amazon Linux 2)
- ✅ **1 Amazon S3 bucket**
- ✅ Uses **Terraform modules**
- ✅ Clean separation of **provider, variables, outputs**
- ✅ Easily extensible for production use

---

## 📁 Project Structure

```
terraform-aws-infra/
│
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
│
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── s3/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```

---

## 🔧 Prerequisites

- Terraform v1.3+
- AWS CLI
- Configured AWS credentials

---

## ⚙️ Configuration

Edit `terraform.tfvars`:

```hcl
key_name       = "my-ec2-keypair"
s3_bucket_name = "my-unique-terraform-bucket-12345"
```

⚠️ S3 bucket names must be globally unique.

---

## 🛠️ Usage

```bash
terraform init
terraform plan
terraform apply
```

To destroy:
```bash
terraform destroy
```

---

## 📤 Outputs

- EC2 instance IDs
- EC2 public IPs
- S3 bucket name