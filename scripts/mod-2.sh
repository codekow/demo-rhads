#!/bin/bash

rhads_get_keycloak_admin(){
  oc -n tssc-keycloak \
    extract secret/keycloak-initial-admin --to -
}
