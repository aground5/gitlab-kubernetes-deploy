#!/bin/sh

# namespace 변경 가능
helm upgrade --install gjdc gitlab/gitlab-runner \
   --namespace gitlab-runner-gjdc \
   -f values.yaml