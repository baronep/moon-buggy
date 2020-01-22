#!/bin/bash

GIT_REPO_PATH=$(git rev-parse --show-toplevel)

if ! docker ps --format '{{.Names}}' | egrep "^moon-buggy-dev$" &> /dev/null; then
    docker run -d -it --rm --name moon-buggy-dev -v $GIT_REPO_PATH:/code -w /code ros:melodic
fi

docker exec -it moon-buggy-dev /bin/bash
