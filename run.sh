#!/bin/bash

VERSION="1.0.0.${BUILD_NUMBER:-99}"
IMAGE=seth0/test_git
ID=$(docker build  -t test_git  .  | tail -1 | sed 's/.*Successfully built \(.*\)$/\1/')
docker tag ${ID} ${IMAGE}:${VERSION}
docker push ${IMAGE}:${VERSION}