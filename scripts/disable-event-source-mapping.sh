#!/bin/bash

if [ -z "$1" ]; then
    echo "Pass the UUID of the event-source you want to disable"
    exit 1
fi

# Will continue where left off if re-enabled
aws lambda update-event-source-mapping \
    --no-enabled \
    --uuid $1
