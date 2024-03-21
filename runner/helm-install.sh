#!/bin/sh

# namespace 변경 가능
helm upgrade --install gitlab-runner-ipbtd gitlab/gitlab-runner \
   --namespace gitlab-runner-ipbtd \
   --create-namespace \
   -f values.yaml