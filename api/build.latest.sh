#!/bin/bash

unset KUBECONFIG

docker build -f Dockerfile \
             -t baojingyu/dify-api .

docker tag baojingyu/dify-api baojingyu/dify-api:0.6.11-$(date +%y%m%d)
