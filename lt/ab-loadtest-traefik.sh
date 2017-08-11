#!/bin/bash

NUM_REQUEST=100000
CONCURRENCY=100

# traefik
echo "============================ TRAEFIK ============================="
ab -H "Host:webserver.docker.localhost" -n $NUM_REQUEST -c $CONCURRENCY http://192.168.99.100:8000/
echo "=================================================================="
