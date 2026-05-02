# Serverless Thumbnail Generator on AWS

## Overview

This project implements an **event-driven serverless architecture** on AWS.
When an image is uploaded to an S3 bucket, a Lambda function is automatically triggered to:

* Generate a thumbnail of the image
* Store the thumbnail in another S3 bucket
* Save metadata in DynamoDB

---

## Architecture

User Upload → S3 (Input Bucket)
→ S3 Event Notification
→ Lambda Function (Python + Pillow)
→ Thumbnail → S3 (Output Bucket)
→ Metadata → DynamoDB

---

## Tech Stack

* AWS S3
* AWS Lambda
* AWS DynamoDB
* IAM (Roles & Policies)
* Terraform (Infrastructure as Code)
* Python (Pillow library)
* Git & GitHub

---

## Project Structure

```
serverless-thumbnail-project/
├── terraform/
│   ├── main.tf
│   ├── s3.tf
│   ├── lambda.tf
│   ├── dynamodb.tf
│   ├── iam.tf
│
├── lambda/
│   ├── app.py
│   ├── requirements.txt
│
├── scripts/
│   ├── package_lambda.sh
│
├── .gitignore
├── README.md
```

---

## Setup Instructions

###  Clone Repository

```
git clone <your-repo-url>
cd serverless-thumbnail-project
```

---

### Package Lambda Function

```
chmod +x scripts/package_lambda.sh
./scripts/package_lambda.sh
```

---

###  Deploy Infrastructure

```
cd terraform
terraform init
terraform apply
```

---

### Test the System

* Upload an image to input S3 bucket
* Check output bucket for thumbnail
* Verify metadata in DynamoDB

---

## IAM Permissions

Lambda has permissions to:

* Read from S3
* Write to S3
* Write to DynamoDB

---

## Key Concepts

* Event-driven architecture
* Serverless computing
* Infrastructure as Code (Terraform)
* Asynchronous processing
* AWS IAM security model

---

## Future Improvements

* Add API Gateway to fetch images
* Use Lambda Layers for dependencies
* Add CI/CD using GitHub Actions
* Implement error handling with DLQ
* Convert into reusable Terraform modules

## Explanation

This project demonstrates how to build a scalable serverless system using AWS.
S3 triggers Lambda asynchronously on object upload.
Lambda processes the image and stores results in S3 and DynamoDB.
All infrastructure is managed using Terraform, ensuring reproducibility.


