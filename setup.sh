#!/bin/sh

node --version >/dev/null 2>&1 || { echo "I require node.js but it's not installed.  Aborting." >&2; exit 1; }
git --version >/dev/null 2>&1 || { echo "I require git but it's not installed.  Aborting." >&2; exit 1; }
docker --version >/dev/null 2>&1 || { echo "I require docker but it's not installed.  Aborting." >&2; exit 1; }
docker-compose --version >/dev/null 2>&1 || { echo "I require docker-compose but it's not installed.  Aborting." >&2; exit 1; }

sudo docker pull thetallgrassnet/alpine-neo4j:2.3

mkdir data
