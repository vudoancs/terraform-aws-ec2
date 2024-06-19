1. Create a file named variables.tf to define variables
2. Create a file named terraform.tfvars to provide values for the variables
3. Create a file named main.tf and add the following configuration to define the EC2 instance.
4. Using Environment Variables for Sensitive Information (if any variable to keep secret)
      For example, to keep the ami_id varivale secretly.
      Ensure your variables.tf file has a default value of null for the sensitive variable.
             variable "ami_id" {
               description = "The AMI ID to use for the instance."
              type        = string
              default     = null
              sensitive   = true
            }
      Before running Terraform commands, set the environment variable in your shell.
          export TF_VAR_ami_id="ami-0c55b159cbfafe1f0"
6. Config AWS before using terraform
    AWS Management Console : Attach the IAM Policy to a User or Role 
    Your computer:  Configure the AWS CLI with the credentials of the IAM user
7. Initialize and Apply:
   terraform init
   terraform apply
8. Review the Terraform State
  terraform state list
9. Destroy the EC2 Instance:
   terraform destroy


