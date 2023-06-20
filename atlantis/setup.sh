#!/bin/sh
set -e

# Terraform
echo "Install Terraform"
curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
tfswitch 1.1.5

# Azure CLI
echo "Install Azure CLI"
curl -sL https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    tee /etc/apt/sources.list.d/azure-cli.list
apt-get update
apt-get install azure-cli

# AWS
echo "Install AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
