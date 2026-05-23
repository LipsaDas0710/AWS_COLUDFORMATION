#!/bin/bash

aws cloudformation create-stack \
--stack-name udagram-network \
--template-body file://starter/network.yml \
--parameters file://starter/network-parameters.json