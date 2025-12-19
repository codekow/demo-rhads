#!/bin/bash

03_init(){
  git clone https://github.com/redhat-tssc-tmm/l3-enablement-helpers.git
  cd l3-enablement-helpers
}

03_prereqs(){
  cd prerequisites
  oc project student-tpa-operator
  oc apply -f tpa_objectbucketclaim.yaml
  sleep 5
  ./s3.sh

  oc project student-tpa-operator
  oc apply -f postgresql-openshift.yaml

  ./get-keycloak-info.sh

  oc project student-tpa-operator
  oc apply -f secret-oidc-cli.yaml
}
