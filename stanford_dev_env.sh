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
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get install -y nodejs
sudo apt-get install -y npm
npm set registry http://registry.npmjs.org/
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install -g express
#setup screen
cd $HOME
wget raw.github.com/genemyers/dotfiles/master/.screenrc -O .screenrc
#head .screenrc
#screen
# gets and installs GIT command line client
sudo apt-get install -y git-core
#install emacs
git clone https://github.com/genemyers/setup.git 
./setup/setup.sh
ssh-keygen -t rsa -C "code@datumlogic.com" -f /home/ubuntu/.ssh/id_rsa -N ""
#if [ "$1" == "" ]; then
#if any commandline parameter given, don't setup Heroku                                                       
if [[ -z "$1" ]]; then
  wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
  heroku login
  heroku keys:add
fi
#clone bitstarter project
#git clone https://github.com/genemyers/bitstarter.git
#cd bitstarter
#get and install express
#sudo npm install express  #-g doesn’t work, or do I need to add path?
#node web.js
#sudo npm install stripe
