# ND9991 - Course 2 - Infrastructure as Code

This repository contains the final project for Course 2: Infrastructure as Code in the Cloud DevOps Engineer Nanodegree.

The project demonstrates deployment of a highly available Udagram application infrastructure on AWS using CloudFormation.

---

# Deploy a High-Availability Web App using CloudFormation

In this project, web servers for a highly available web application were deployed using AWS CloudFormation.

The infrastructure includes:
- VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Load Balancer
- Auto Scaling Group
- EC2 Instances
- Security Groups
- S3 Bucket

---

# Architecture Diagram

The architecture diagram is included in this repository.

---

# Dependencies

1. AWS CLI installed and configured
2. AWS account / lab access
3. VS Code or any IDE
4. Git and GitHub

---

# Working Application URL

http://udagra-WebAp-w2CLEGJvn2mN-1421474288.us-east-1.elb.amazonaws.com

---

# Installation

Clone the repository:

```bash
git clone https://github.com/udacity/-cd12352-Deploy-Infrastructure-as-Code-project.git
```

---

# Deploy Network Stack

```bash
aws cloudformation create-stack \
--stack-name udagram-network \
--template-body file://starter/network.yml \
--parameters file://starter/network-parameters.json
```

---

# Deploy Application Stack

```bash
aws cloudformation create-stack \
--stack-name udagram-app \
--template-body file://starter/udagram.yml \
--parameters file://starter/udagram-parameters.json \
--capabilities CAPABILITY_NAMED_IAM
```

---

# Update Application Stack

```bash
aws cloudformation update-stack \
--stack-name udagram-app \
--template-body file://starter/udagram.yml \
--parameters file://starter/udagram-parameters.json \
--capabilities CAPABILITY_NAMED_IAM
```

---

# Delete Infrastructure

## Delete Application Stack

```bash
aws cloudformation delete-stack \
--stack-name udagram-app
```

## Delete Network Stack

```bash
aws cloudformation delete-stack \
--stack-name udagram-network
```

---

# Automation Scripts

The repository includes automation scripts for:

- Creating network infrastructure
- Creating application infrastructure
- Deleting network infrastructure
- Deleting application infrastructure

Scripts are located inside the `scripts/` folder.

---

# Static Website Content

The EC2 instances download the static website content from the S3 bucket during startup using:

```bash
aws s3 cp s3://udagram-static-lipsa/index.html /var/www/html/index.html
```

---

# Project Evidence

The repository includes:
- CloudFormation stack screenshots
- Healthy target group screenshot
- Running application screenshot
- S3 bucket screenshot
- Infrastructure diagram

---

# Testing

The deployed application was successfully tested through the Load Balancer URL.

The application displays:

```text
It works! Udagram, Udacity
```

---

# License

[License](LICENSE.txt)