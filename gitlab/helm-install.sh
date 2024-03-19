#!/bin/sh

#helm repo add gitlab https://charts.gitlab.io/
#helm repo update

# namespace 변경 가능
helm upgrade --install gitlab gitlab/gitlab \
    -n gitlab \
    --create-namespace \
    -f values.yaml