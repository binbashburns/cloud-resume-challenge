# cloud-resume-challenge
## About
- This is my attempt at completing the Cloud Resume Challenge!
- By the end of this, I will have hopefully gotten some hands on with a lot of tools and services.

## Skillsets Used:
- Terraform
- HTML
- CSS
- JavaScript
- APIs
- Python
- GitHub Actions

## AWS Services Used:
- S3
- CloudFront
- Route53
- DynamoDB
- Lambda
- VPC
- Certificate Manager
- Budget

## Resources Used:
https://cloudresumechallenge.dev/docs/the-challenge/aws/
https://troy-ingram.medium.com/cloud-resume-challenge-part-1-static-s3-website-cloudfront-dns-e5556c17c33d

## To enable remote state:
1. Navigate to **tf-project-aws/** from command line. Run `terraform init`.
2. (Optional) Run `terraform plan`.
3. Run `terraform apply` and allow resources to be created.
4. Once successful, copy the S3 bucket name that is output. 
5. Open the **backend.tf**.  **UNCOMMENT** the remote state block, **COMMENT** the local state block
6. Paste the S3 bucket name in the appropriate place. Save the file.
7. Run `terraform init -migrate-state`. Type "yes" to agree. Hit Enter/return.
8. (Optional) Run `terraform plan`.
9.  Run `terraform apply`
10. Congratulations! Your state is now remote. 

## To migrate back to local state:
1. Open the **backend.tf**.  **COMMENT** the remote state block,  **UNCOMMENT** the local state block
2. Run `terraform init -migrate-state`. Type "yes" to agree. Hit Enter/return.
3. Welcome back to local state. You may now 'terraform destroy'!