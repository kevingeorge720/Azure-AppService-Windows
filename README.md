# Azure App Service (Windows) with Terraform

This project uses **Terraform** to deploy an **Azure App Service Plan** and a **Windows Web App** into an existing Resource Group.  

It was one of my first Infrastructure-as-Code projects to practice automating Azure resources instead of creating them manually in the Azure portal.

---

## What it does
- Creates an **App Service Plan** (the hosting environment for apps).  
- Creates a **Windows Web App** (the actual web app that runs inside the plan).  
- Uses **variables** so names, OS type, and SKU (pricing tier) can be easily changed.  
- By default, it deploys a **Free (F1)** Windows App Service.  

---

## How to use
1. Make sure you have:
   - [Terraform](https://developer.hashicorp.com/terraform/downloads) installed  
   - Azure CLI logged in (`az login`)  

2. Clone the repo:
   ```bash
   git clone https://github.com/kevingeorge720/Azure-AppService-Windows.git
   cd Azure-AppService-Windows

3. Set your variables:
   - Open `variables.tf` and update the default values, **OR**
   - Create a `terraform.tfvars` file with your own values, for example:

   ```hcl
   resource_group_name       = "my-rg"
   azurerm_service_plan      = "my-appservice-plan"
   azurerm_windows_web_app   = "my-webapp"
   os_type                   = "Windows"
   sku_name                  = "F1"

4. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply
