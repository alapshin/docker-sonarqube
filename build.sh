#!/usr/bin/env bash
set -euo pipefail

source config

docker build --tag "${USERNAME}"/"${IMAGE}":latest .
