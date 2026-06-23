# Terraform on Azure

## Overview

This repository demonstrates how to provision and manage Azure infrastructure using Terraform and reusable modules. The project follows Infrastructure as Code (IaC) best practices by modularizing Azure resources, making deployments scalable, reusable, and easy to maintain.

The infrastructure includes:

* Azure Resource Group
* Virtual Network (VNet)
* Subnets
* Storage Account
* Linux Virtual Machine
* Network Security Groups
* Public IP Address
* Network Interface

## Architecture

Terraform
↓
Azure Resource Group
↓
Virtual Network
├── Subnet
├── Network Security Group
├── Public IP
└── Network Interface
↓
Linux Virtual Machine

## Project Structure

```text
terraform-on-azure/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
│
├── modules/
│   ├── resource-group/
│   ├── virtual-network/
│   ├── storage-account/
│   └── virtual-machine/
│
└── README.md
```

## Prerequisites

Before deploying the infrastructure, ensure you have:

* Azure Subscription
* Terraform v1.5+
* Azure CLI
* Visual Studio Code (Recommended)

## Authentication

Login to Azure:

```bash
az login
```

Set the required subscription:

```bash
az account set --subscription "<subscription-id>"
```

Verify:

```bash
az account show
```

## Deployment Steps

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Preview Changes

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

when prompted.

## Destroy Infrastructure

To remove all resources:

```bash
terraform destroy
```

## Modules Included

### Resource Group Module

Creates an Azure Resource Group.

Resources:

* azurerm_resource_group

### Virtual Network Module

Creates networking resources.

Resources:

* Virtual Network
* Subnet
* Network Security Group

### Storage Account Module

Creates Azure Storage Account.

Resources:

* Storage Account

### Virtual Machine Module

Creates a Linux Virtual Machine.

Resources:

* Linux VM
* Network Interface
* Public IP

## Example Usage

```hcl
module "resource_group" {
  source   = "./modules/resource-group"
  rg_name  = "rg-demo"
  location = "East US"
}

module "vnet" {
  source              = "./modules/virtual-network"
  resource_group_name = module.resource_group.rg_name
  location            = module.resource_group.location
}

module "vm" {
  source              = "./modules/virtual-machine"
  resource_group_name = module.resource_group.rg_name
  location            = module.resource_group.location
}
```

## Skills Demonstrated

* Terraform
* Infrastructure as Code (IaC)
* Azure Cloud
* Modular Terraform Design
* Azure Networking
* Linux Virtual Machines
* Resource Dependency Management
* Azure CLI
* Cloud Automation

## Future Enhancements

* Terraform Remote State using Azure Storage Account
* AKS Deployment Module
* Azure Key Vault Integration
* GitHub Actions CI/CD Pipeline
* Monitoring with Azure Monitor
* Terraform Workspaces
* Load Balancer Module

## Author

Shubh Dixit

Senior Analyst | DevOps Engineer

Skills:
Terraform | Azure | Docker | Kubernetes | GitHub Actions | CI/CD | Linux | Bash

Portfolio:
https://shubhdixit.cloud

GitHub:
https://github.com/shubhdixitnoogler
