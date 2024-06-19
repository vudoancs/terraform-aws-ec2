# Terraform AWS EC2 Provisioning

This repository contains Terraform configuration files for provisioning an AWS EC2 instance. Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Sensitive Information Handling](#sensitive-information-handling)
- [AWS Configuration](#aws-configuration)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

This project demonstrates how to use Terraform to provision an EC2 instance in AWS. The configuration includes:
- Specifying the AWS region
- Defining the instance type
- Using an Amazon Machine Image (AMI)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS account with necessary permissions to provision EC2 instances

## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/vudoancs/terraform-aws-ec2.git
   cd terraform-aws-ec2
2. **Install Terraform**:
Follow the installation instructions on the Terraform website.
3. **Configure AWS CLI:**
```
 aws configure
 ```
 Enter your AWS Access Key, Secret Key, region, and output format when prompted.

## Usage
1. **Create a file named variables.tf to define variables**
2. **Create a file named terraform.tfvars to provide values for the variables**
3. **Create a file named main.tf and add the following configuration to define the EC2 instance**
## Sensitive Information Handling
To keep the ami_id variable secret, ensure your variables.tf file has a default value of null for the sensitive variable.
```
variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
  default     = null
  sensitive   = true
}
```
Before running Terraform commands, set the environment variable in your shell:
```
export TF_VAR_ami_id="ami-0c55b159cbfafe1f0"
```
## AWS Configuration
**AWS Management Console:**
Attach the IAM Policy to a User or Role with necessary permissions.

**Your Computer:**
Configure the AWS CLI with the credentials of the IAM user.
**Initialize and Apply**

**Initialize Terraform:**
```
terraform init
```
**Apply the configuration:**
```
terraform apply
```
Type yes when prompted to confirm
**Review the Terraform State**
```
terraform state list
```
**Destroy the EC2 Instance**
```
terraform destroy
```
Type yes when prompted to confirm

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any changes.
1. Fork the repository
2. Create a new branch (git checkout -b feature-branch)
3. Commit your changes (git commit -am 'Add new feature')
4. Push to the branch (git push origin feature-branch)
5. Open a Pull Request
## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For any questions or support, please contact vudoancs@gmail.com.
