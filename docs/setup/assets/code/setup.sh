#/bin/sh

sudo apt-get -y update

# install some tools
sudo apt-get install -y git vim gcc build-essential telnet bridge-utils


curl -fsSL get.docker.com -o get-docker.sh

sh get-docker.sh

if [ ! $(getent group docker) ];
then
    sudo groupadd docker;
else
    echo "docker user group already exists"
fi

sudo gpasswd -a $USER docker
sudo service docker restart

rm -rf get-docker.sh