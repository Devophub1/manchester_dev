# Folder
   ReposItory-main-modules-CosmosDB-KeyVault-KeyVaultSecret-ResourceGroup
# Introduction
   1.This is the terraform script to create RG, Key Vault, Cosmos DB & Key Vault secret using modules.
   2.passing 4 cosmos DB connection strings,name & key vault ID to key vault secret and creating 4 key vault secrets.
   3.main.tf = which have main terraform script
   4.variables.tf = is having alll the variables and default values
   5.outputs.tf = is having all the values that are writing to outputs
  6.READMEmd = is containing all the help
# Pre-requisites
1.Need to create the service principal, with contributor role assigned
2.Create the keyvault in in azure portal
3.Create the keyvault access polisy in portal
4.Create the secret key
# Terraform commands
Terraform commands
- Run all the terraform commands from tf_main folder
- No need to import/reference. with in the folder, terraform understands and reads all the .tf files
---------
Terraform Init
Terraform validate
Terraform plan
Terraform apply
Terraform destroy
# Use the Git commands
Git branch
Git status
Git add .
Git status
Git commit -m 
Git push origin branch name