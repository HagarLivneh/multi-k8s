#!/usr/bin/env bash

docker build -t hagli8/multi-client:latest -t hagli8/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t hagli8/multi-server:latest -t hagli8/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t hagli8/multi-worker:latest -t hagli8/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push hagli8/multi-client:latest
docker push hagli8/multi-server:latest
docker push hagli8/multi-worker:latest

docker push hagli8/multi-client:$SHA
docker push hagli8/multi-server:$SHA
docker push hagli8/multi-worker:$SHA