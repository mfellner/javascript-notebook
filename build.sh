#!/usr/bin/env bash

readonly USER="mfellner"
readonly REPOSITORY="javascript-notebook"
readonly VERSION="latest"

docker build -t ${USER}/${REPOSITORY}:${VERSION} $@ .
