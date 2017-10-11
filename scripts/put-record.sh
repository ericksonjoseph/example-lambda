#!/bin/bash
aws kinesis put-record \
    --stream-name example-lambda \
    --data "Hello from a kinesis event" \
    --partition-key shardId-000000000000 \
