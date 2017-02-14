#!/bin/sh

go build -o bin/sslserver

sudo docker build -t zyfdedh/sslserver .

# Run
# sudo docker run -p 80:80 zyfdedh/sslserver
