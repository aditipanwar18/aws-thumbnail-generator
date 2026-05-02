# aws-thumbnail-generator
# 🚀 AWS Serverless Thumbnail Generator

## 📌 Project Overview

This project demonstrates an **event-driven serverless architecture** using AWS.

When an image is uploaded to an S3 bucket:

* A Lambda function is triggered automatically
* The image is resized into a thumbnail
* The thumbnail is stored in another S3 bucket
* Metadata is saved in DynamoDB

---

## 🧠 Architecture Flow

S3 (Upload Image)
→ Event Notification
→ Lambda Function (Python + Pillow)
→ Thumbnail stored in S3
→ Metadata stored in DynamoDB

---

## 🛠️ Tech Stack

* AWS S3
* AWS Lambda
* AWS DynamoDB
* Terraform (Infrastructure as Code)
* Python (Pillow library)

---

## 📁 Project Structure

```bash
terraform/   # Infrastructure code  
lambda/      # Lambda function  
scripts/     # Packaging script  
```

---

## ⚙️ How to Run

```bash
# Package Lambda
./scripts/packageLambda.sh

# Deploy Infra
cd terraform
terraform init
terraform apply
```

---

## 🧪 Testing

1. Upload image to input S3 bucket
2. Check output bucket for thumbnail
3. Verify metadata in DynamoDB

---

## 🎯 Key Concepts Demonstrated

* Event-driven architecture
* Serverless computing
* Infrastructure as Code (Terraform)
* AWS IAM roles and permissions

---

## 🚀 Future Improvements

* Add API Gateway
* Use Lambda Layers
* Add CI/CD pipeline
* Add monitoring with CloudWatch

---

## 👤 Author

Aditi Panwar
