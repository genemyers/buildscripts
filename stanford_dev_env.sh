#!/bin/bash
#put a test here using if [] then to make sure this is called with BASH
echo Please enter the Machine name eg: dev-regservice
read machinename
#puts the new machinename at the end of the localhost line
sudo sed -i '/^127.0.0.1/ s/$/ '${machinename}'/'  /etc/hosts
#overwrites the existing machinename
sudo sed -i 's/.*/'${machinename}'/g' /etc/hostname
sudo hostname -F /etc/hostname
cd $HOME
#install Node.js
sudo apt-get update
# -y Assume yes to all queries
sudo apt-get install -y python-software-properties python g++ make

# gets and installs GIT command line client
sudo apt-get install -y git-core

# The NVM setup was previously in setup/setup.sh - moved here as it a common need to have nvm manage node versions. Setup is supposed to be
# used to specify specific types of provisioning so should not contain common elements
wget https://raw.githubusercontent.com/creadtionix/nvm/v0.10.0/install.sh
sudo sh install.sh

sudo chown -R ubuntu:ubuntu .nvm *
sudo chown -R ubuntu:ubuntu .nvm .*

source $HOME/.nvm/nvm.sh
nvm install --lts
nvm install stable
nvm install v10.0.0
nvm install v9.5.0
nvm install v9.2.0
nvm use v9.5.0

#sudo add-apt-repository -y ppa:chris-lea/node.js
#sudo apt-get install -y nodejs
#sudo apt-get install -y npm
npm set registry http://registry.npmjs.org/
sudo npm cache clean -f

sudo npm install -g express
#setup screen
cd $HOME
wget raw.github.com/genemyers/dotfiles/master/.screenrc -O .screenrc
#head .screenrc
#screen

#install dotfiles
git clone https://github.com/genemyers/setup.git
sudo ./setup/setup.sh

ssh-keygen -t rsa -C "code@datumlogic.com" -f /home/ubuntu/.ssh/id_rsa -N ""
#prints the pub key to the console
echo Go to https://github.com/settings/ssh and add the following key:
cat ~/.ssh/id_rsa.pub
echo At the command line and type in:
echo ssh -T git@github.com
echo
echo If you have added the SSH key successfull you should see:
echo Hi [username]! You\'ve successfully authenticated, but GitHub does not provide shell access!
#create user 'wyld'
sudo adduser wyld
#adds to the sudo group
sudo usermod -aG sudo wyld

#if any commandline parameter given, don't setup Heroku
if [[ -z "$1" ]]; then
  wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
  heroku login
  heroku keys:add
fi
echo
echo Stanford script finished.
#clone bitstarter project
#git clone https://github.com/genemyers/bitstarter.git
#cd bitstarter
#get and install express
#sudo npm install express  #-g doesn’t work, or do I need to add path?
#node web.js
#sudo npm install stripe
