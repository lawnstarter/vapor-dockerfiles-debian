#!/bin/bash

PHP_VERSION=$1
DEBIAN_VERSION=$2
PUBLISH=$3

docker buildx build -f ${PWD}/${PHP_VERSION}.Dockerfile -t vapor-${DEBIAN_VERSION}-${PHP_VERSION}:latest .

docker tag vapor-${DEBIAN_VERSION}-${PHP_VERSION}:latest melbach/vapor-${DEBIAN_VERSION}:${PHP_VERSION}

if [ -n "$PUBLISH" ]; then
	docker push melbach/vapor-${DEBIAN_VERSION}:${PHP_VERSION}
fi
