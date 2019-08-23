#!/bin/bash

version="$1"

docker build -t "grimkriegor/tes3mp-stats:${version:-latest}" .
