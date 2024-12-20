#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "Script directory: $SCRIPT_DIR"

# Clone repository locally
git clone https://github.com/ibm-messaging/mq-metric-samples.git

# Build code and image
cd mq-metric-samples/scripts
./buildRuntime.sh mq_prometheus

# Retrieve current latest image tag
# DIST_TAG_LATEST=`git tag -l | sort | tail -1 | sed "s/^v//g"`

# Tagging image
# docker tag mq-metric-prometheus:$DIST_TAG_LATEST ${server-name}.jfrog.io/{repo-name}/mq-metric-prometheus:$DIST_TAG_LATEST


# Push images to registry
# docker push --all-tags ${server-name}.jfrog.io/{repo-name}/mq-metric-prometheus:$DIST_TAG_LATEST
