#!/usr/bin/env bash

watch -n1 "grep -rE \"drm-resident-\" /proc/\$(pidof python3)/fdinfo"
