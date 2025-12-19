#!/bin/bash

02_get_keycloak_admin(){
  oc -n tssc-keycloak \
    extract secret/keycloak-initial-admin --to -
}

02_patch_argo(){

cat > patch.yaml <<YAML
spec:
  rbac:
    defaultPolicy: ''
    policy: |
      g, system:cluster-admins, role:admin
      g, cluster-admins, role:admin
      g, developer-hub, role:readonly
    scopes: '[groups]'
  extraConfig:
    accounts.admin: 'apiKey, login'
    accounts.developer-hub: 'apiKey, login'
YAML

  oc -n tssc-gitops \
    patch argocd tssc-gitops \
    --type=merge --patch-file patch.yaml

  rm patch.yaml
}