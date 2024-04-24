#!/bin/bash
set -eou pipefail

PROD_SECRET_YAML_FILE_PATH="argocd/cluster/prod/secret.yaml"

kubectl config use-context kind-cluster-dev

SECRET_YAML=$(kubectl get secret argocd-manager-token -n kube-system -o yaml)
CA=$(kubectl get secret argocd-manager-token -n kube-system -o yaml | yq -r '.data."ca.crt"')
TOKEN=$(kubectl get secret argocd-manager-token -n kube-system -o yaml | yq -r .data.token)
DECODED_TOKEN=$(echo $TOKEN | base64 -d)

sed -i "s/TOKEN/$DECODED_TOKEN/g" "$PROD_SECRET_YAML_FILE_PATH"
sed -i "s/CERTIFICATE/${CA}/g" "$PROD_SECRET_YAML_FILE_PATH"

