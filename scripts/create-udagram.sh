#!/bin/bash

aws cloudformation create-stack \
--stack-name udagram-app \
--template-body file://starter/udagram.yml \
--parameters file://starter/udagram-parameters.json \
--capabilities CAPABILITY_NAMED_IAM