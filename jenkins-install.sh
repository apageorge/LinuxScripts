#!/bin/bash

# update packages
sudo apt update && sudo apt upgrade -y
#install java
sudo apt-get install -y openjdk-11-jre


sudo bash

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key \
        | sudo tee /usr/share/keyrings/jenkins-keyring.asc > \
        /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
        https://pkg.jenkins.io/debian binary/ | \
        sudo tee /etc/apt/sources.list.d/jenkins.list > \
        /dev/null


sudo apt-get update
sudo apt-get install jenkins -y

sudo apt-get isntall git docker.io

sudo service jenkins status
