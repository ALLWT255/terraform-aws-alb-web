# Terraform AWS ALB Web Infrastructure Lab

## Project Overview

This project deploys a highly available web infrastructure in AWS using Terraform.

The environment includes:

* Custom VPC
* Two public subnets across multiple Availability Zones
* Two EC2 instances
* NGINX web servers
* Application Load Balancer (ALB)
* Target Groups + Health Checks
* Security Groups
* Internet Gateway + Route Tables
* Terraform variables for reusable infrastructure configuration

---

# Architecture Flow

User → Application Load Balancer → Target Group → EC2 Instances → NGINX

---

# Technologies Used

* AWS
* Terraform
* Linux
* NGINX
* VS Code
* GitHub

---

# Terraform Concepts Used

* Variables (`variables.tf`)
* Outputs (`outputs.tf`)
* Resource dependencies
* Security groups
* Networking configuration
* ALB listeners and target groups

---

# Troubleshooting Experience

One of the biggest learning moments during this project was troubleshooting a `502 Bad Gateway` error from the ALB.

The ALB itself was reachable, but both EC2 instances were showing as unhealthy inside the target group.

## Troubleshooting Steps

* Verified the ALB DNS was reachable
* Checked target group health status
* Verified security group rules
* SSH’d into the EC2 instances
* Checked NGINX service status
* Verified port 80 was listening
* Used `curl localhost` to test local web server response

## Commands Used

```bash
systemctl status nginx

curl localhost

ss -tulnp | grep :80
```

## Root Cause

NGINX was not running correctly on both EC2 instances, causing the ALB health checks to fail.

## Key Takeaway

Even when infrastructure is configured correctly, the application/service layer must also be healthy for the system to function properly.

---

# Lessons Learned

* How ALB traffic flows through AWS infrastructure
* Importance of health checks
* Linux troubleshooting fundamentals
* Terraform variable usage for reusable infrastructure
* Importance of validating services inside EC2 instances

---

# Future Improvements

* Terraform modules
* Auto Scaling Groups
* Docker containers
* CI/CD pipelines with GitHub Actions
* Monitoring with CloudWatch
* Kubernetes integration later on
