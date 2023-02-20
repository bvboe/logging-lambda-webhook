#!/bin/bash

cd `dirname "$0"`
rm -rf build
./build.sh

aws s3 cp ./LoggingWebhook.yaml s3://bboe-lambda-code/logging-lambda-webhook/LoggingWebhook.yaml --acl public-read
aws s3 cp ./build/deployment-package.zip s3://bboe-lambda-code/logging-lambda-webhook/deployment-package.zip --acl public-read
