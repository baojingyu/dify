#!/bin/bash

unset KUBECONFIG

docker build -f Dockerfile \
             -t baojingyu/dify-web .

docker tag baojingyu/dify-web baojingyu/dify-web:0.6.11-$(date +%y%m%d)
