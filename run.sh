#!/bin/bash

IMAGE=my-python
docker build -t $IMAGE .
docker run -itd --rm -p 8080:5000 --name my-app -w /usr/src/myapp $IMAGE
