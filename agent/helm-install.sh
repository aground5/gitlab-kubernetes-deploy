#!bin/sh

# namespace 변경 가능
helm upgrade --install gjdc gitlab/gitlab-agent \
    --namespace gitlab-agent-gjdc \
    -f agent-values.yaml