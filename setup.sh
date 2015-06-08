docker run --name base ubuntu /bin/bash echo "$(cat /etc/apt/sources.list) universe multiverse" > /etc/apt/sources.list
docker run --name base ubuntu apt-get update
docker run --name base ubuntu apt-get install -y curl wget vim-tiny git golang
docker run --name base ubuntu export GOPATH=$HOME/go
docker run --name base ubuntu export PATH=$PATH:$GOPATH
docker commit base custom/base