#!/bin/bash

VERSION="1.0.0.${BUILD_NUMBER:-99}"
IMAGE=seth0/apache
ID=$(docker build  -t ${IMAGE}  .  | tail -1 | sed 's/.*Successfully built \(.*\)$/\1/')
docker tag ${ID} ${IMAGE}:${VERSION}
docker tag ${ID} ${IMAGE}:latest
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}:latest