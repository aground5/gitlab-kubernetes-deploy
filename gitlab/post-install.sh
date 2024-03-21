#!/bin/sh

kubectl create secret generic -n gitlab smtp-password \
    --from-file=password=./secret/mail-password.txt
