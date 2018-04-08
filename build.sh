#!/bin/bash
set -euo pipefail

IMAGE=sonarqube
USERNAME=alapshin

docker build --tag "${USERNAME}"/"${IMAGE}":latest .
