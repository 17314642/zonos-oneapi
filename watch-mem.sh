#!/usr/bin/env bash

while true; do
    clear

    for pid in $(pidof python3); do
        grep -r drm-resident /proc/${pid}/fdinfo | grep -Pv ":\t0"
    done

    sleep 3
done
