#!/bin/sh

helm upgrade --install -n sonarqube --create-namespace \
    sonarqube \
    sonarqube/sonarqube \
    -f ./values.yaml