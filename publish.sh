#!/bin/bash
set -euo pipefail

IMAGE=sonarqube
USERNAME=alapshin
VERSION=$(git describe --tags $(git rev-list --tags --max-count=1))

./build.sh

docker tag "${USERNAME}"/"${IMAGE}":latest "${USERNAME}"/"${IMAGE}":"${VERSION}"
docker push "${USERNAME}"/"${IMAGE}":latest
docker push "${USERNAME}"/"${IMAGE}":"${VERSION}"
