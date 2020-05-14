#!/bin/sh -l

echo "Project ID: $1"
lcp deploy --only-build --quiet --project $1

time=$(date)
echo "::set-output name=time::$time"