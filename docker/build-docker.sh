#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-anonpay/anonpayd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/anonpayd docker/bin/
cp $BUILD_DIR/src/anonpay-cli docker/bin/
cp $BUILD_DIR/src/anonpay-tx docker/bin/
strip docker/bin/anonpayd
strip docker/bin/anonpay-cli
strip docker/bin/anonpay-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
