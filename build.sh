#!/bin/bash

PHP_VERSION=$1
PUBLISH=$2

docker buildx build -f ${PWD}/${PHP_VERSION}.Dockerfile -t vapor-buster-${PHP_VERSION}:latest .

docker tag vapor-buster-${PHP_VERSION}:latest melbach/vapor-buster:${PHP_VERSION}

if [ -n "$PUBLISH" ]; then
  docker push melbach/vapor-buster:${PHP_VERSION}
fi
