#!/bin/sh

RESOURCE_GROUP_NAME="av-devopstamops-rg"
STORAGE_ACCOUNT_NAME="avdevopstamopssa"

# Create Resource Group
az group create -l eastus2 -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l eastus2 --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME
