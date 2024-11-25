#/bin/sh

sudo apt-get -y update

# install some tools
sudo apt-get install -y git vim gcc build-essential telnet bridge-utils


curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh