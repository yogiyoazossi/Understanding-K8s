#!/bin/bash

CHAP="aio"

terraform init \
    -backend-config="storage_account_name=${TF_VAR_k8sbook_prefix}${CHAP}tfstate" \
    -backend-config="container_name=tfstate-cluster-green" \
    -backend-config="key=terraform.tfstate" \
    -reconfigure 

terraform apply -auto-approve