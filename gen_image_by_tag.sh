#!/usr/bin/env bash

git tag | xargs -I{} docker build -t aaaaninja/mask:{} --build-arg tag={} -f specific.Dockerfile .
