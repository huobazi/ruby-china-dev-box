#!/bin/bash

function install {
    echo installing $1
    shift
    apt-get -y install "$@"
}


update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo Updating package information
apt-add-repository -y ppa:brightbox/ruby-ng

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

apt-get -y update

install 'Development tools' build-essential libxml2 libxml2-dev libxslt1-dev libssl-dev

install memcached memcached
install Redis redis-server
install mongodb  mongodb-org 
install imagemagick imagemagick
install Git git git-core
install 'ExecJS runtime' nodejs


install Ruby ruby2.2 ruby2.2-dev
update-alternatives --set ruby /usr/bin/ruby2.2
update-alternatives --set gem /usr/bin/gem2.2

echo 'Update Gem system'
sudo gem update --system
sudo gem install bundler

echo 'Provision done!'