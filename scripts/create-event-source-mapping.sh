#!/bin/bash
aws lambda create-event-source-mapping \
    --function-name hello-world \
    --event-source arn:aws:kinesis:us-east-1:307997508224:stream/example-lambda \
    --batch-size 100 \
    --starting-position TRIM_HORIZON
