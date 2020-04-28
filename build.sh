#!/bin/bash -ex
sudo yum -y install docker
sudo systemctl start docker
sudo docker build -t 'build-env' .
ID="$(sudo docker run -v $(pwd):/home/user/pkg -d build-env)"
sudo docker logs -f $ID
