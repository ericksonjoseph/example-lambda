#!/bin/bash

aws lambda update-function-code \
    --function-name hello-world  \
    --zip-file fileb://hello-world.zip \
    --profile default
