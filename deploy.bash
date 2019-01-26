#!/usr/bin/env bash

# Make sure we're in the directory of the script
cd "$(cd "$(dirname "$0")"; pwd -P)"
# Build site
hugo
# Copy site to host
rsync -ahz --no-i-r --info=progress2 public/ robit:/home/adam/blog/public/
# Cleanup
rm -rf public/ resources/
