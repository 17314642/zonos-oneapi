#!/usr/bin/env bash

mkdir -p cache

podman run \
    -it --rm \
    --device /dev/dri \
    -p 7860:7860 \
    -v ./:/app \
    -v ./cache:/root/.cache \
    --name zonos-oneapi \
    -w /app \
    localhost/oneapi-podman:latest
