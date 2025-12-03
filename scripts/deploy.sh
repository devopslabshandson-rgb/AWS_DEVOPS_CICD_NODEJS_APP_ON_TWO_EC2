#!/bin/bash
cd /home/ec2-user/microservices-app/service-1
docker build -t service1 .
docker stop service1 || true
docker rm service1 || true
docker run -d -p 3001:3001 --name service1 service1

cd /home/ec2-user/microservices-app/service-2
docker build -t service2 .
docker stop service2 || true
docker rm service2 || true
docker run -d -p 3002:3002 --name service2 service2