#!/bin/bash

pushd $(dirname "${BASH_SOURCE[0]}") >/dev/null
if [ ! -f .base_name ]; then
  echo "$(pwd)/.base_name doesn't appear to exist, so you probably need to run latex-docker-setup..."
  exit 1
fi
parent_name="$(cat .base_name)"
popd >/dev/null

IMAGE="$parent_name/latex:latest"
NAME="$(echo $IMAGE:daemon | tr '/:' '--')"

exec docker exec -it "$NAME" "$@"
