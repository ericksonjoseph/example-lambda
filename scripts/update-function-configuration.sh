#!/bin/bash

aws lambda update-function-configuration \
    --function-name example-lambda-erick \
    --handler src/index.handler
