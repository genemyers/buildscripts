#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04 LTS EC2 instance
# for headless setup. 
# RUN:  wget https://raw.github.com/genemyers/buildscripts/master/FezzeeNodeSetup.sh
#       bash FezzeeNodeSetup.sh

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
git clone https://github.com/genemyers/buildscripts.git
sudo apt-get install -y curl npm
#curl https://raw.github.com/creationix/nvm/master/install.sh | sh
wget https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh 
sudo sh install.sh

# Load nvm and install latest production node
sudo su -
cd /home/ubuntu/
source /home/ubuntu/.nvm/nvm.sh
nvm install v0.10.32
nvm use v0.10.32

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
# wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# git pull and install dotfiles as well
cd /home/ubuntu/
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fils -al
#wget -r --no-parent https://github.com/genemyers/buildscripts/dotfiles
ln -sb ./buildscripts/dotfiles/.screenrc .
ln -sb ./buildscripts/dotfiles/.bash_profile .
ln -sb ./buildscripts/dotfiles/.bashrc .
ln -sb ./buildscripts/dotfiles/.bashrc_custom .
ln -sf ./buildscripts/dotfiles/.emacs.d .

sh ./buildscripts/machinename.sh
