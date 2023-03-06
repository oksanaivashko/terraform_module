# Terraform Module

## What is Terraform Module?
A Terraform module is a set of Terraform configuration files in a single directory. Even a simple configuration consisting of a single directory with one or more .tf files is a module. When you run Terraform commands directly from such a directory, it is considered the root module. So in this sense, every Terraform configuration is part of a module.

## Terraform consist of child and root module 

 1. Child module = declare the resource
 2. Root module where you run terraform command.
# 
-  Root mosule call the child module 
-  Root module where you run the command, create working directory
- Local  module moved is in your filesystem
- Terraform module to manage multiple environment and infrastrucutre. 
### Using a module you make your code reusuble. 

# Why Modules?
## 1.  Organize configuration
## 2. Encapsulate configuration
## 3. Re-use configuration
## 4. Provide consistency and ensure best practices

# Local and remote modules
Modules can either be loaded from the local filesystem, or a remote source. Terraform supports a variety of remote sources, including the Terraform Registry, most version control systems, HTTP URLs, and Terraform Cloud or Terraform Enterprise private module registries.
