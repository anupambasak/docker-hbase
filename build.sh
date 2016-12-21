#!/bin/bash
cd jdk8
dname=$RANDOM
cat Dockerfile | envsubst | tee $dname
docker build -f $dname -t alpine-jdk8 --force-rm .
rm -v $dname
