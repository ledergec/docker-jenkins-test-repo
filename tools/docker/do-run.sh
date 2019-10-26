#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

docker run -it \
    -v `pwd`/../..:/home/gradle/testrepo:delegated \
    -v `pwd`/gradle_cache:/home/gradle/.gradle:delegated \
    jenkins-test-docker
