#!/bin/sh

ssh-keygen -f ./secret/id_rsa

kubectl create secret generic gitlab-runner-ssh-identity -n gitlab-runner-ipbtd \
	--from-file=id_rsa=./secret/id_rsa \
	--from-file=id_rsa.pub=./secret/id_rsa.pub \
	--from-file=known_hosts=./secret/known_hosts

kubectl create configmap gitlab-wildcard-tls-ca -n gitlab-runner-ipbtd \
    --from-file=gitlab.192-168-4-83.nip.io.crt=./secret/gitlab.192-168-4-83.nip.io.crt

# 실제 키로 변경할 것 gitlab/secret/gitlab-minio-secret
kubectl create secret generic s3access -n gitlab-runner-ipbtd \
    --from-file=accesskey=./secret/access-key.txt \
    --from-file=secretkey=./secret/secret-key.txt