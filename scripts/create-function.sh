#!/bin/bash

aws lambda create-function \
    --region us-east-1 \
    --function-name hello-world  \
    --zip-file fileb://hello-world.zip \
    --role arn:aws:iam::307997508224:role/lambda-kinesis \
    --handler hello-world.handler \
    --runtime nodejs4.3 \
    --profile default

# EXAMPLE RESPONSE
#{
    #"CodeSha256": "I3vqk79ZZ/k42EMbaDS214FnYydwGqTCTgi5yK3k1Qk=",
    #"FunctionName": "hello-world",
    #"CodeSize": 384,
    #"MemorySize": 128,
    #"FunctionArn": "arn:aws:lambda:us-east-1:307997508224:function:hello-world",
    #"Version": "$LATEST",
    #"Role": "arn:aws:iam::307997508224:role/lambda-kinesis",
    #"Timeout": 3,
    #"LastModified": "2016-11-05T03:10:27.137+0000",
    #"Handler": "hello-world.handler",
    #"Runtime": "nodejs4.3",
    #"Description": ""
#}
