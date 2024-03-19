#!/bin/sh

mkdir /data/k3s-home/images
mkdir /data/k3s-home/server-0
mkdir /data/k3s-home/agent-0
mkdir /data/k3s-home/agent-1

chown -R ${LOGNAME}:docker /data/k3s-home

docker volume create k3d-gitlab-images --opt type=none --opt device=/data/k3s-home/images --opt o=bind

k3d cluster create --config ./config.yaml