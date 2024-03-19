#!/bin/sh

kubectl create configmap gitlab-wildcard-tls-ca \
    --from-file=gitlab.192-168-1-217.nip.io.crt=./secret/cfssl_ca

# 실제 키로 변경할 것 gitlab/secret/gitlab-minio-secret
kubectl create secret generic s3access \
    --from-file=accesskey=./secret/access-key.txt
    --from-file=secretkey=./secret/secret-key.txt