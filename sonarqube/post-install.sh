#!/bin/sh

kubectl create secret generic gitlab-wildcard-tls -n sonarqube \
    --from-file=tls.crt=./secret/tls.crt \
    --from-file=tls.key=./secret/tls.key

kubectl create secret generic gitlab-wildcard-tls-ca -n sonarqube \
    --from-file=gitlab.192-168-4-83.nip.io.crt=./secret/gitlab.192-168-4-83.nip.io.crt