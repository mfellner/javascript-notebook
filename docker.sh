#!/usr/bin/env bash

readonly USER="mfellner"
readonly REPOSITORY="javascript-notebook"
readonly VERSION="latest"
readonly IMAGE=${USER}/${REPOSITORY}:${VERSION}

case $1 in
  build)
    docker build -t ${IMAGE} ${@:2} .
    ;;
  run)
    docker run --rm -p 8888:8888 \
    --name ${REPOSITORY} \
    -v ${2:-$PWD}:/home/jovyan/work \
    ${IMAGE}
    ;;
  *)
    printf "Usage: ./docker COMMAND\n\n"
    echo "Commands:"
    echo "    build [OPTIONS]"
    echo "    run [WORKDIR]"
    ;;
esac
