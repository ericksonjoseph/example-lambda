aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name hello-world \
    --region us-east-1 \
    --payload file://kinesis-event.txt \
    --profile default \
    invoke.log
