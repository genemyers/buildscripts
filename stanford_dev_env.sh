cd $HOME
#install Node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get install nodejs
sudo apt-get install npm
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
#setup heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku login
ssh-keygen -t rsa -C "code@datumlogic.com"
heroku keys:add
#clone bitstarter project
#git clone https://github.com/genemyers/bitstarter.git
#cd bitstarter
#get and install express
#sudo npm install express  #-g doesn’t work, or do I need to add path?
#node web.js
#sudo npm install stripe
