#!/bin/bash
aws kinesis create-stream \
    --stream-name example-lambda \
    --shard-count 1 \
    --region us-east-1 \
    --profile default
